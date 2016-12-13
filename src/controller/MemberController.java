package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.MemberDao;

public class MemberController {

	@Autowired
	MemberDao memberDao;
	
	
	@RequestMapping("/mypage.do")
	public String mypage(){
		return "mypage/mypage";
	}
	
}
