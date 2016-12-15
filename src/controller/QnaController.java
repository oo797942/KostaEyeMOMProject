package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.QnADaoImpl;
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
	
	@RequestMapping("faqboard.do")
	public String faqboard(Model m){
		
		
		return "faqboard/faqboard";
	}
}
