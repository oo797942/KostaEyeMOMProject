package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
	@RequestMapping("/mypage.do")
	public String mypage(HttpSession session){
		
		return "mypage/mypage";
	}
}
