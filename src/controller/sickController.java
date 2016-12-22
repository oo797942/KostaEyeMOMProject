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
	@RequestMapping("josuk.do")
	public String sickJosuk(){
		
		return "sick/josuk";
	}
	@RequestMapping("biman.do")
	public String sickBiman(){
		
		return "sick/biman";
	}
	@RequestMapping("dang.do")
	public String sickDang(){
		
		return "sick/dang";
	}
	@RequestMapping("k1.do")
	public String sickK1(){
		
		return "sick/k1";
	}
	@RequestMapping("k2.do")
	public String sickK2(){
		
		return "sick/k2";
	}
	@RequestMapping("re.do")
	public String sickRe(){
		  
		return "sick/re";
	}
	@RequestMapping("sic.do")
	public String sickSic(){
		
		return "sick/sic";
	}
	@RequestMapping("yano.do")
	public String sickYano(){
		
		return "sick/yano";
	}
	@RequestMapping("yaje.do")
	public String sickYaje(){
		
		return "sick/yaje";
	}
	@RequestMapping("hu.do")
	public String sickHu(){
		
		return "sick/hu";
	}
	
	
	
}
