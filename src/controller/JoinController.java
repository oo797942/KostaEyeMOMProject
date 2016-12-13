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
		System.out.println("Email =============" + email);
		return "joinEmailCheck";
	}
	
	 
	@RequestMapping("/idcheck.do")
	@ResponseBody
	public int idcheck(MemberVO memberVO, Model m, HttpSession session){
		int result= 0;
		System.out.println("컨트롤탓다아아앙"+memberVO.getU_id());
		List<MemberVO> vo =memberJoinDao.idCheck(memberVO);
		result = vo.size();
		System.out.println("빼에에엑"+result);
		return result; 
	}
	
	
	@RequestMapping("/nickcheck.do")
	@ResponseBody
	public int nickcheck(MemberVO memberVO, Model m, HttpSession session){
		int result= 0;
		System.out.println("컨트롤탓다아아앙"+memberVO.getU_nick());
		List<MemberVO> vo =memberJoinDao.nickCheck(memberVO);
		result = vo.size();
		System.out.println("빼에에엑"+result);
		return result; 
	}
	
}
