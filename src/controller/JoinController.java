package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.MemberDao;
import member.dao.MemberDaoImpl;
import member.vo.MemberVO;

@Controller
public class JoinController {
	
	@Autowired
	private MemberDaoImpl memberJoinDao;
	  
	@RequestMapping("/join.do")
	public String login(MemberVO memberVO, Model m){
		int result = 0;
		result = memberJoinDao.memberJoin(memberVO);
		
		if(result==1){
			System.out.println("가입완료");
			
		}else{
		System.out.println("씰패");
		}
		
		return "redirect:home.go";
	}
	
	
	@RequestMapping("/emailCheck.go")
	public String emailCheck(String email){
		//여기까진됨
		
		return "joinEmailCheck";
	}
	
	 
	@RequestMapping("/idcheck.do")
	@ResponseBody
	public int idcheck(MemberVO memberVO, Model m, HttpSession session){
		int result= 0;
		
		List<MemberVO> vo =memberJoinDao.idCheck(memberVO);
		result = vo.size();
		
		return result; 
	}
	
	
	@RequestMapping("/nickcheck.do")
	@ResponseBody
	public int nickcheck(MemberVO memberVO, Model m, HttpSession session){
		int result= 0;
		List<MemberVO> vo =memberJoinDao.nickCheck(memberVO);
		result = vo.size();
		return result; 
	}
	
	@RequestMapping("/memberStop.go")
	public String adminStop(HttpSession session,MemberVO memberVO,Model m){
		List<MemberVO> vo =memberJoinDao.idCheck(memberVO);
		m.addAttribute("vlist",vo.get(0));
		return "memberStop";
	}
	
	@RequestMapping("/memberExile.go")
	public String memberExile(HttpSession session,MemberVO memberVO,Model m){
		int result =memberJoinDao.memberExile(memberVO);

		return "popupClose";
	}
	
}
