package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	@RequestMapping("memberUpdate.do")
	public String memberUpdate(Model m, MemberVO memVO, HttpSession session){
		MemberVO suser = (MemberVO)session.getAttribute("user");
		memVO.setU_id(suser.getU_id());		
		int re = memberDao.memberUpdate(memVO);
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/adminMember.go")
	public String admonMember(HttpSession session,Model m){
		List<MemberVO> list =null;
		list = memberDao.memberList();
		m.addAttribute("list", list);
		return "adminMember";
	}
}
