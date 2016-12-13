package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.LoginDao;
import member.dao.LoginDaoImpl;
import member.dao.MemberDaoImpl;
import member.vo.MemberVO;

@Controller
public class IdcheckController {
	
	@Autowired
	private MemberDaoImpl memberJoinDao;
	
	 
	@RequestMapping("/idcheck.do")
	@ResponseBody
	public String idcheck(MemberVO memberVO, Model m, HttpSession session){
		String result= null;
		System.out.println("컨트롤탓다아아앙"+memberVO.getU_id());
		MemberVO vo =memberJoinDao.idCheck(memberVO);
		result = vo.getU_id();
		System.out.println("빼에에엑"+result);
		return result; 
	}
}
