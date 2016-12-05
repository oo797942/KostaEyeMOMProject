package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.LoginDaoImpl;
import member.vo.MemberVO;

@Controller
public class JoinController {
	
	@Autowired
	private LoginDaoImpl loginDao;
	 
	@RequestMapping("/join.do")
	public String login(MemberVO memberVO, Model m){
		int result = 0;
		result =loginDao.memberJoin(memberVO);
		
		if(result==1){
			System.out.println("가입완료");
			
		}else{
		System.out.println("씰패");
		}
		
		return "home";
	}
}
