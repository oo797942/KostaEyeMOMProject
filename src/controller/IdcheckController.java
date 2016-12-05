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
public class IdcheckController {
	
	@Autowired
	private LoginDaoImpl loginDao;
	
	 
	@RequestMapping("/idcheck.do")
	public String idcheck(MemberVO memberVO, Model m, HttpSession session){
System.out.println("컨트롤탓다아아앙"+memberVO.getU_id());
		MemberVO vo=loginDao.memberLogin(memberVO);
				return vo.getU_id();
	}
}
