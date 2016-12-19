package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.vo.BoardVO;
import member.vo.MemberVO;

@Controller
public class messageController {

	
	//아나바다 삭제
	@RequestMapping("messageWriter.go")
	public String deleteDonation(BoardVO VO, Model m, HttpSession session ){
		System.out.println("롸이트아이디가져와라라래ㅔ라ㅣ래ㅑ사라"+VO.getU_id());
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		m.addAttribute("user",memvo);
		m.addAttribute("vo",VO);
		return "messageWriter";
	}
}
