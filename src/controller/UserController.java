package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/home.go")
	public String goMain(){
		System.out.println("home.go 요청");
		return "home.go";
	}
	
	@RequestMapping("/home.do")
	public String goMain2(){
		return "home";
	}
	
	
}
