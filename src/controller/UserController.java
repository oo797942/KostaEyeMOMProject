package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

	@RequestMapping("/home.go")
	public String goMain(){
		System.out.println("home.go로 간당");
		return "home/home.go";
	} 
	 
	@RequestMapping("/home.do")
	public String goMain2(){
		return "home/home";
	}
	
	@RequestMapping("/gojoin.do")
	public String goJoin(){
		return "joinview/join";
	}
	
	
	
	@RequestMapping(value = "{title}", method = RequestMethod.GET)
	public String callBorad(Model m,@PathVariable("title") String title){
		m.addAttribute("title", title );
		return "board/board";
	}
	
	@RequestMapping("/place.do")
	public String callPlace(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("keyword", keyword );
		return "map/place";
	}
	
	@RequestMapping("/map.go")
	public String callMap(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("keyword", keyword );
		return "map.go";
	}
	
	 
}
