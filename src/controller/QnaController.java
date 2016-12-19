package controller;

import java.rmi.server.SocketSecurityException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.QnADaoImpl;
import member.vo.FaqVO;
import member.vo.MemberVO;
import member.vo.QnAVO;

@Controller
public class QnaController {
	
	@Autowired
	QnADaoImpl QnaDao;
	
	@RequestMapping("qnaboard.do")
	public String Qnaboard(Model m){
		
		List <QnAVO> list=null;
		list= QnaDao.allQna();
		m.addAttribute("list",list);
		return "board/boardQna";
	}

	/////////////////////////////////FAQ
	
	@RequestMapping("faqboard.do")
	public String faqboard(HttpSession session, Model m, FaqVO faqVO){
		
		List <FaqVO> list=null;
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		faqVO.setU_id(memberVO.getU_id());
		  //--페이징 처리
	    int totalCount = QnaDao.faqListCount(faqVO); //게시물 총갯수를 구한다
	    faqVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    faqVO.setPageSize(12);
	    m.addAttribute("pageVO", faqVO);

	    //--페이징 처리
	    
	    List<FaqVO>  faqList = QnaDao.allPagingFaq(faqVO);
		
		m.addAttribute("list", faqList); //가져온 DB를 모델에 저장
		return "faqboard/faqboard";
	}
	//1:1문의
	@RequestMapping("passfaq.do")
	@ResponseBody
	public int faqboard(FaqVO faqVO, HttpSession session){
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		System.out.println(faqVO.getQ_content());
		System.out.println(faqVO.getQ_title());
		
		faqVO.setU_id(memberVO.getU_id());
		System.out.println(faqVO.getU_id());
		int result =0;
		result=	QnaDao.writeFaq(faqVO);
		String pass=null;
		
		return result;
	}
	
	@RequestMapping("qnaview.do")
	public String qnaview(){
		return "qnaboard/qnaboard";
	}
	
//	------Faq리스트-----
	@RequestMapping("/adminQna.go")
	public String admonFaq(HttpSession session, Model m, FaqVO faqVO){
		List <FaqVO> list=null;
		
		  //--페이징 처리
	    int totalCount = QnaDao.faqListCount(faqVO); //게시물 총갯수를 구한다
	    faqVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    faqVO.setPageSize(12);
	    m.addAttribute("pageVO", faqVO);

	    //--페이징 처리
	    
	    List<FaqVO>  faqList = QnaDao.allPagingFaq(faqVO);
		
		m.addAttribute("list", faqList); //가져온 DB를 모델에 저장

//		list= QnaDao.allFaq();
//		m.addAttribute("list",list);
		return "adminQna";
	}
	
	@RequestMapping("faqAnswer.do")
	public String faqAnswer(Model m,FaqVO faqVO){
		FaqVO vlist=null;
		vlist= QnaDao.selectFaq(faqVO);
		m.addAttribute("vlist",vlist);
		return "faqAnswer";
	}
	
	@RequestMapping("faqAnswerDoing.go")
	public String faqAnswerDoing(Model m,FaqVO faqVO){
		faqVO.setQ_answer(faqVO.getQ_answer().replaceAll("\r\n","<br>"));
		QnaDao.faqAnswerDoing(faqVO);
		return "popupClose";
	}
	
	

	
}
