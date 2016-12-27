package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.mail.iap.Response;

import member.dao.LoginDao;
import member.dao.LoginDaoImpl;
import member.vo.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private LoginDaoImpl loginDao;
	
	//로그인
	@RequestMapping("/login.do")
	@ResponseBody
	public String login(MemberVO memberVO, Model m, HttpSession session){

		
		MemberVO vo=loginDao.memberLogin(memberVO); //vo에 id pw담아서 디비 넘김
		String result= "1";
		if(vo!=null){ // id/pw 로그인 성공시
					result="0";
					session.setAttribute("user", vo); //세션에 사용자 vo담음
					loginDao.memberLoginRecord(vo);
				}
			if(vo.getU_id().equals("admin")){ // 어드민 로그인시
				result="3";
		}
		
		return result;
	}
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "redirect:home.go";
	}
	
	
	
}
