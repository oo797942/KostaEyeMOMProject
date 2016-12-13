package controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

public class MypageController {
	
	@RequestMapping("mypage.do")
	public String mypage(HttpSession session){
		
		return "mypage/mypage";
	}
}
