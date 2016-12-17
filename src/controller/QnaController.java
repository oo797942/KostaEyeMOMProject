package controller;

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
	public String faqboard(Model m){
		
		
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
}
