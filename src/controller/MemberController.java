package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.MemberDao;

@Controller
public class MemberController {

	@Autowired
	MemberDao memberDao;
	
	
	@RequestMapping("mypageModify.do")
	public String mypage(){
		return "mypage/mypageModify";
	}
	
}
