package controller;

import java.util.List;

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
		return "adminBoard";
	}
	
//	@RequestMapping("/adminMember.go")
//	public String admonMember(HttpSession session){
//		return "adminMember";
//	}
	
	@RequestMapping("/adminReport.go")
	public String adminReport(HttpSession session){
		return "adminReport";
	}
	
	@RequestMapping("/adminQna.go")
	public String admonQna(HttpSession session){
		return "adminQna";
	}
	
	@RequestMapping("/adminGallery.go")
	public String adminGallery(HttpSession session){
		return "adminGallery";
	}
	
//	@RequestMapping("/adminVideo.go")
//	public String admonVideo(HttpSession session){
//		return "adminVideo";
//	} 
	
//	@RequestMapping("/adminGame.go")
//	public String admonGame(HttpSession session){
//		return "adminGame";
//	}
	@RequestMapping("/adminGameInsert.go")
	public String admonGameInsert(HttpSession session){
		return "adminGameInsert";
	}
	
	@RequestMapping("/adminVideoInsert.go")
	public String adminVideoInsert(HttpSession session){
		return "adminVideoInsert";
	}

	@RequestMapping("/adminStudyInsert.go")
	public String adminStudyInsert(HttpSession session){
		return "adminStudyInsert";
	}
	

	
}
