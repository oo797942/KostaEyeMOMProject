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
	
	//글쓰기페이지 이동
	@RequestMapping("insertqnaboard.do")
	public String insertQnaBoard(){
		return "qnaboard/qnaInsert";
	}
	
	//게시글 등록
	@RequestMapping("insertqna.do")
	public String insertQna(QnAVO qnaVO, HttpSession session,HttpServletRequest request){
		MemberVO memberVO=(MemberVO) session.getAttribute("user");
		String ip = request.getRemoteAddr(); //작성자 ip
		qnaVO.setU_id(memberVO.getU_id());
		
		qnaVO.setIn_ip(ip);
		qnaVO.setIn_nick(memberVO.getU_nick());
		qnaVO.setIn_content(qnaVO.getIn_content().replaceAll("\r\n","<br>"));
		int result = QnaDao.insertQna(qnaVO); 
		
		return "redirect: qnaboard.do";
	}
	
	//qna리스트 불러오기
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
		
		m.addAttribute("list", qnaList); //가져온 DB를 모델에 저장
		
		return "board/boardQna";
	}
	


	/////////////////////////////////FAQ
	//사용자 faq 리스트 불러오기
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
	//1:1문의 하기 입력 버튼 눌렀을때
	@RequestMapping("passfaq.do")
	@ResponseBody
	public int faqboard(FaqVO faqVO, HttpSession session){
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		
		faqVO.setU_id(memberVO.getU_id());
		int result =0;
		result=	QnaDao.writeFaq(faqVO);
		String pass=null;
		
		return result;
	}
	
	//qna게시글 눌렀을때 게시물 데이터 가져오기
	@RequestMapping("qnaview.do")
	public String qnaview(QnAVO qnaVO, Model m){
		
		int result = QnaDao.Count(qnaVO); //조회수 카운트
		QnAVO qVO = QnaDao.callQna(qnaVO);//게시물 데이터 가져오기
		List <AnswerVO> list=QnaDao.callAnwer(qVO);// qna 답변 가져오기
		List <List<AreplyVO>>replylist=new ArrayList<List<AreplyVO>>();
		for(int i=0; i<list.size() ; i++){
			AnswerVO aVO= list.get(i);
			
			List<AreplyVO> rlist= QnaDao.callReply(aVO);
			
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
	
	//답변 버튼 눌렀을때 
	@RequestMapping("answerqna.do")
	@ResponseBody
	public int insertAnswer(AnswerVO aVO, HttpSession session){
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		
		aVO.setA_nick(memberVO.getU_nick());
		aVO.setA_content(aVO.getA_content().replaceAll("\r\n","<br>"));
		int result=0;
		result=QnaDao.insertAnswer(aVO);
		
		return result;
	}
	
	//답변에 댓글달기
	@RequestMapping("answerReply.do")
	@ResponseBody
	public int insertReply(AreplyVO areplyVO, HttpSession session){
		int result=0;
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		areplyVO.setAr_id(memberVO.getU_id()); 
		areplyVO.setAr_nick(memberVO.getU_nick());
		result=QnaDao.insertReply(areplyVO);
		
		return result;
	}
	//댓글삭제
	@RequestMapping("deleteAnswerReply.do")
	@ResponseBody
	public int deleteAnswerReply(AreplyVO areplyVO){
		int result=0;
		
		result=QnaDao.deleteAnswerReply(areplyVO);
		
		return result;
	}
}
