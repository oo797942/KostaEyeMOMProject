package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.QnADaoImpl;
import member.vo.QnAVO;

@Controller
public class TestController {

	@Autowired
	private QnADaoImpl qnaDao;

	@RequestMapping("/test.go")
	public String goMain(Model m) {
		System.out.println("test.go로 간당");
		List<QnAVO> qnaList = qnaDao.newQna();
		if (qnaList != null) {
			System.out.println("제대로 3개 들어왔냐아아아: " + qnaList.size());
			m.addAttribute("qnaList", qnaList);
		}
		System.out.println("이프문 지났따");
		return "home.go";
	}

}
