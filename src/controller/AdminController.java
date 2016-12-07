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
public class AdminController {
	 
	@Autowired
	private LoginDaoImpl loginDao;
	 

	@RequestMapping("/adminBoard.go")
	public String adminBoard(HttpSession session){
		return "admin/adminBoard";
	}
	
	@RequestMapping("/adminMember.go")
	public String admonMember(HttpSession session){
		return "admin/adminMember";
	}
	@RequestMapping("/adminReport.go")
	public String adminReport(HttpSession session){
		return "admin/adminReport";
	}
	
	@RequestMapping("/adminQna.go")
	public String admonQna(HttpSession session){
		return "admin/adminQna";
	}
	@RequestMapping("/adminGallery.go")
	public String adminGallery(HttpSession session){
		return "admin/adminGallery";
	}
	
	@RequestMapping("/adminVideo.go")
	public String admonVideo(HttpSession session){
		return "admin/adminVideo";
	}
	
	@RequestMapping("/adminGame.go")
	public String admonGame(HttpSession session){
		return "admin/adminGame";
	}
	@RequestMapping("/adminGameInsert.go")
	public String admonGameInsert(HttpSession session){
		return "admin/adminGameInsert";
	}
}
