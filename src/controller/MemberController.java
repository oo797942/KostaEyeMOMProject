package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.MemberDao;
import member.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberDao memberDao;
	
	
	@RequestMapping("mypageModify.do")
	public String mypage(){
		return "mypage/mypageModify";
	}
	
	
	@RequestMapping("/adminMember.go")
	public String admonMember(HttpSession session,Model m){
		List<MemberVO> list =null;
		list = memberDao.memberList();
		m.addAttribute("list", list);
		return "adminMember";
	}
}
