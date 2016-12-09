package controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.LoginDaoImpl;
import member.dao.QnADaoImpl;
import member.vo.QnAVO;

@Controller
public class TestController {
	
	@Autowired
	private QnADaoImpl qnaDao;
	
	@RequestMapping("/test.go")
	public String goMain(){
		System.out.println("test.go로 간당");
		ArrayList<QnAVO> list = qnaDao.newQna();
		if(list != null){
			System.out.println("제대로 3개 들어왔냐아아아: " + list.size());
		}
		System.out.println("이프문 지났따");
		return "home.go";
	} 
	 

}
