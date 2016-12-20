package controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.QnADaoImpl;
import member.vo.AnswerVO;
import member.vo.AreplyVO;
import member.vo.FaqVO;
import member.vo.MemberVO;
import member.vo.QnAVO;

@Controller
public class QnaController {
	
	@Autowired
	QnADaoImpl QnaDao;
	
	@RequestMapping("insertqnaboard.do")
	public String insertQnaBoard(){
		return "qnaboard/qnaInsert";
	}
	
	@RequestMapping("insertqna.do")
	public String insertQna(QnAVO qnaVO, HttpSession session,HttpServletRequest request){
		MemberVO memberVO=(MemberVO) session.getAttribute("user");
		String ip = request.getRemoteAddr(); //작성자 ip
		qnaVO.setU_id(memberVO.getU_id());
		System.out.println();
		qnaVO.setIn_ip(ip);
		qnaVO.setIn_nick(memberVO.getU_nick());
		qnaVO.setIn_content(qnaVO.getIn_content().replaceAll("\r\n","<br>"));
		int result = QnaDao.insertQna(qnaVO); 
		
		return "redirect: qnaboard.do";
	}
	
	@RequestMapping("qnaboard.do")
	public String Qnaboard(QnAVO qnaVO, Model m){
		
		List <FaqVO> list=null;
		
		  //--페이징 처리
	    int totalCount = QnaDao.qnaListCount(); //게시물 총갯수를 구한다
	    qnaVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    qnaVO.setPageSize(12);
	    m.addAttribute("pageVO", qnaVO);

	    //--페이징 처리
	    
	    List<QnAVO>  qnaList = QnaDao.allPagingQna(qnaVO);
		System.out.println("list : "+qnaList.get(0).getIn_count());
		m.addAttribute("list", qnaList); //가져온 DB를 모델에 저장
		
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
	
	//qna게시글 보기
	@RequestMapping("qnaview.do")
	public String qnaview(QnAVO qnaVO, Model m){
		System.out.println("글번호"+qnaVO.getB_no());
		int result = QnaDao.Count(qnaVO); //조회수 카운트
		QnAVO qVO = QnaDao.callQna(qnaVO);
		List <AnswerVO> list=QnaDao.callAnwer(qVO);
		List <List<AreplyVO>>replylist=new ArrayList<List<AreplyVO>>();
		System.out.println("댓글갯수"+list.size());
		System.out.println("댓글번호2:"+list.get(0).getA_no());
		for(int i=0; i<list.size() ; i++){
			AnswerVO aVO= list.get(i);
			System.out.println("댓글번호2"+aVO.getA_no());
			List<AreplyVO> rlist= QnaDao.callReply(aVO);
			System.out.println("리플리스트 사이즈 :"+rlist.size());
			
				replylist.add(rlist);
			
			
			list.get(i).setA_recount(rlist.size());
		}
		
		m.addAttribute("vo",qVO);
		m.addAttribute("list", list);
		m.addAttribute("rlist", replylist);
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
	
	//답글달기
	@RequestMapping("answerqna.do")
	@ResponseBody
	public int insertAnswer(AnswerVO aVO, HttpSession session){
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		System.out.println(memberVO.getU_nick());
		aVO.setA_nick(memberVO.getU_nick());
		aVO.setA_content(aVO.getA_content().replaceAll("\r\n","<br>"));
		int result=0;
		result=QnaDao.insertAnswer(aVO);
		
		return result;
	}
	
	
	@RequestMapping("answerReply.do")
	@ResponseBody
	public int insertReply(AreplyVO areplyVO, HttpSession session){
		int result=0;
		System.out.println(areplyVO.getA_no());
		System.out.println(areplyVO.getAr_content());
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		areplyVO.setAr_id(memberVO.getU_id()); 
		areplyVO.setAr_nick(memberVO.getU_nick());
		result=QnaDao.insertReply(areplyVO);
		
		return result;
	}
	
}
