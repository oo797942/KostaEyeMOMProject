package controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class sickController {

	@RequestMapping("sick.do")
	public String sickBoard(){
		
		return "sick/ato";
	}
	
	@RequestMapping("heat.do")
	public String sickHeat(){
		
		return "sick/heat";
	}
	@RequestMapping("gunsun.do")
	public String sickGunsun(){
		
		return "sick/gunsun";
	}
	@RequestMapping("jiru.do")
	public String sickGiru(){
		
		return "sick/jiru";
	}
	@RequestMapping("dudru.do")
	public String sickDudru(){
		
		return "sick/dudru";
	}
	@RequestMapping("cold.do")
	public String sickCold(){
		
		return "sick/cold";
	}
	@RequestMapping("jung.do")
	public String sickJung(){
		
		return "sick/jung";
	}
	@RequestMapping("bi.do")
	public String sickBi(){
		
		return "sick/bi";
	}
	@RequestMapping("chun.do")
	public String sickChun(){
		
		return "sick/chun";
	}
	@RequestMapping("gu.do")
	public String sickGu(){
		
		return "sick/gu";
	}
	
	
	
	
}
