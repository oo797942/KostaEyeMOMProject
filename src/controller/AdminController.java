package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.BoardDao;
import member.dao.BoardDaoImpl;
import member.dao.LoginDao;
import member.dao.LoginDaoImpl;
import member.vo.BoardVO;
import member.vo.MemberVO;
import member.vo.ReplyVO;

@Controller
public class AdminController {
	 
	@Autowired
	private BoardDaoImpl boardDao; 
	 
 
	@RequestMapping("/adminBoard.go")
	public String adminBoard(HttpSession session,Model m, BoardVO boardVO){
		
		  int totalCount = boardDao.adminBoardListCount(); //게시물 총갯수를 구한다
		    boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
		    m.addAttribute("pageVO", boardVO);

		    //--페이징 처리
		    
		    List<BoardVO>  boardList = boardDao.adminPagingBoard(boardVO);
			
			m.addAttribute("list", boardList); //가져온 DB를 모델에 저장
		
		return "adminBoard";
	}
	
	@RequestMapping("/adminBoardInsert.go")
	public String adminBoardInsert(HttpSession session){
		return "adminBoardInsert";
	}
	@RequestMapping("/adminBoardInsertDoing.go")
	public String adminBoardInsertDoing(HttpSession session, BoardVO boardVO){
	System.out.println(boardVO.getB_title());
	System.out.println(boardVO.getB_content());
		boardDao.adminBoardInsert(boardVO);
		return "redirect:adminBoard.go";
	}
	@RequestMapping("/adminBoardUpdate.go")
	public String adminBoardUpdate(HttpSession session, BoardVO vo, Model m){
		
		BoardVO boardVO = boardDao.adminBoardUpdate(vo);
		
		m.addAttribute("vlist",boardVO);
		return "adminBoardUpdate";
	}
	@RequestMapping("/adminBoardUpdateDoing.go")
	public String adminBoardUpdateDoing(HttpSession session, BoardVO boardVO){
		boardDao.adminBoardUpdateDoing(boardVO);
		return "redirect:adminBoard.go";
	}
//	@RequestMapping("/adminMember.go")
//	public String admonMember(HttpSession session){
//		return "adminMember";
//	}
	
	@RequestMapping("/adminReport.go")
	public String adminReport(HttpSession session){
		return "adminReport";
	}
	
//	@RequestMapping("/adminQna.go")
//	public String admonQna(HttpSession session){
//		return "adminQna";
//	}
	
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
