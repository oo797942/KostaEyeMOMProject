package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.LoginDao;
import member.dao.LoginDaoImpl;
import member.vo.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDaoImpl loginDao;
	
	@RequestMapping("/login.do")
	@ResponseBody
	public String login(MemberVO memberVO, Model m, HttpSession session){

		 System.out.println("비밀번호"+memberVO.getU_pass());
		MemberVO vo=loginDao.memberLogin(memberVO);
		String result= "1";
		if(vo!=null){ // id/pw 로그인 성공시
			result="0";
			System.out.println("logincontorller : 성공"+vo.getU_name());
			session.setAttribute("user", vo);
			
		}
		
		return result;
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.invalidate();
		return "home";
	}
	
}
