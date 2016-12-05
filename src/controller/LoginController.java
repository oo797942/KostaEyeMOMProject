package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.LoginDao;
import member.dao.LoginDaoImpl;
import member.vo.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDaoImpl loginDao;
	
	@RequestMapping("/login.do")
	public String login(MemberVO memberVO, Model m, HttpSession session){

		System.out.println("컨트롤");
		System.out.println(memberVO.getU_id());
		System.out.println(memberVO.getU_pass());
		MemberVO vo=loginDao.memberLogin(memberVO);
		
		if(vo!=null){
			
			m.addAttribute("message", "로그인 성공");
			m.addAttribute("result",1);
			System.out.println("logincontorller : 성공"+vo.getU_id());
			session.setAttribute("user", vo);
			
		}else{
			System.out.println("logincontorller : 실패");
			m.addAttribute("message", "로그인 실패");
			m.addAttribute("result",0);
		}
		
		return "home";
	}
}
