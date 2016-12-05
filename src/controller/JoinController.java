package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.MemberJoinDao;
import member.dao.MemberJoinDaoImpl;
import member.vo.MemberVO;

@Controller
public class JoinController {
	
	@Autowired
	private MemberJoinDaoImpl memberJoinDao;
	  
	@RequestMapping("/join.do")
	public String login(MemberVO memberVO, Model m){
		int result = 0;
		result = memberJoinDao.memberJoin(memberVO);
		
		if(result==1){
			System.out.println("가입완료");
			
		}else{
		System.out.println("씰패");
		}
		
		return "home";
	}
}
