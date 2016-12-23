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
	
//마이페이지 수정페이지 이동
	@RequestMapping("mypageModify.do")
	public String mypage(){
		return "mypage/mypageModify";
	}
	
	
	//마이페이지에서 회원수정시 수정실행
	@RequestMapping("memberUpdate.do")
	public String memberUpdate(Model m, MemberVO memVO, HttpSession session){
//		세션에서 사용자 정보 가져오기
		MemberVO suser = (MemberVO)session.getAttribute("user");
		memVO.setU_id(suser.getU_id());		
//		세션에서 가져온 사용자 정보중 id를 뽑아서 업데이트 함수 실행
		memberDao.memberUpdate(memVO);
		return "redirect:mypage.do";
	}
	
	
//	관리자페이지의 회원 리스트 가져오기
	@RequestMapping("/adminMember.go")
	public String adminMember(HttpSession session,Model m){
		List<MemberVO> list =null;
		list = memberDao.memberList();
		m.addAttribute("list", list);
		return "adminMember";
	}
}
