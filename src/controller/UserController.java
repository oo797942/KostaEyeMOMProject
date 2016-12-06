package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping("/join.go")
	public String goJoin(){
		return "join";
	}
	
	@RequestMapping(value = "{title}", method = RequestMethod.GET)
	public String callBorad(Model m,@PathVariable("title") String title){
		m.addAttribute("title", title );
		return "board";
	}
	 
}
