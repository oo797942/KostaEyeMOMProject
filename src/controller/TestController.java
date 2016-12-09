package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("/test.go")
	public String goMain(){
		System.out.println("test.go로 간당");
		return "home.go";
	} 
	 

}
