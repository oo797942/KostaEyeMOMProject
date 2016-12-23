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
import member.dao.GroupPurchaseDaoImpl;
import member.dao.LoginDao;
import member.dao.LoginDaoImpl;
import member.vo.BoardVO;
import member.vo.GroupPurchaseVO;
import member.vo.MemberVO;
import member.vo.ReplyVO;

@Controller
public class AdminController {
	 
	@Autowired 
	private BoardDaoImpl boardDao; 
	@Autowired
	GroupPurchaseDaoImpl GPDao;

 
//	관리자 공지사항 게시글 리스트 가져오기
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
	
//	공지사항 입력 페이지로 이동
	@RequestMapping("/adminBoardInsert.go")
	public String adminBoardInsert(HttpSession session){
		return "adminBoardInsert";
	}
	
//	공지사항 입력실행
	@RequestMapping("/adminBoardInsertDoing.go")
	public String adminBoardInsertDoing(HttpSession session, BoardVO boardVO){
		boardDao.adminBoardInsert(boardVO);
		return "redirect:adminBoard.go";
	}

//공지사항 수정 페이지 이동
	@RequestMapping("/adminBoardUpdate.go")
	public String adminBoardUpdate(HttpSession session, BoardVO vo, Model m){
		
		
//		기존 공지사항내용을 가져옴
		BoardVO boardVO = boardDao.adminBoardUpdate(vo);		
		m.addAttribute("vlist",boardVO);
		return "adminBoardUpdate";
	}
	

//공지사항 수정 실행
	@RequestMapping("/adminBoardUpdateDoing.go")
	public String adminBoardUpdateDoing(HttpSession session, BoardVO boardVO){
		boardDao.adminBoardUpdateDoing(boardVO);
		return "redirect:adminBoard.go";
	}



//관리자 공동구매 리스트 가져오기
	@RequestMapping("/adminPurchase.go")
	public String adminPurchase(HttpSession session, Model m, GroupPurchaseVO gpVO){
	    //--페이징 처리
	    int totalCount = GPDao.shoppingListCount(); //게시물 총갯수를 구한다
	    gpVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    m.addAttribute("pageVO", gpVO);

	    //--페이징 처리
	    
	    List<GroupPurchaseVO>  gpList = GPDao.allPagingShopping(gpVO);

		m.addAttribute("list", gpList); //가져온 DB를 모델에 저장
		

		return "adminPurchase";
	}
	
	//관리자 공동구매 입력창 이동
	@RequestMapping("/adminPurchaseInsert.go")
	public String adminPurchaseInsert(HttpSession session){
		return "adminPurchaseInsert";
	}
	
	//관리자 공동구매 입력 실행
	@RequestMapping("/adminPurchaseInsertDoing.go")
	public String adminPurchaseInsertDoing(HttpSession session, Model m, GroupPurchaseVO gpVO){
		 GPDao.adminPurchaseInsertDoing(gpVO);
		return "redirect:adminPurchase.go";
	}
	
	//관리자 공동구매 조기마감 실행
	@RequestMapping("/adminPurchaseUpdate.go")
	public String adminPurchaseUpdate(HttpSession session, Model m, GroupPurchaseVO gpVO){
		 GPDao.adminPurchaseUpdate(gpVO);
		return "redirect:adminPurchase.go";
	}
	
	//관리자 공동구매 삭제 실행
	@RequestMapping("/adminPurchaseDelete.go")
	public String adminPurchaseDelete(HttpSession session, Model m, GroupPurchaseVO gpVO){
		 GPDao.adminPurchaseDelete(gpVO);
		return "redirect:adminPurchase.go";
	}
	
//플레시게임(놀아봐요) 입력페이지 이동
	@RequestMapping("/adminGameInsert.go")
	public String admonGameInsert(HttpSession session){
		return "adminGameInsert";
	}
	
	//영상(춤을춰요)입력페이지 이동
	@RequestMapping("/adminVideoInsert.go")
	public String adminVideoInsert(HttpSession session){
		return "adminVideoInsert";
	}

	//영상(공부해요)입력페이지 이동
	@RequestMapping("/adminStudyInsert.go")
	public String adminStudyInsert(HttpSession session){
		return "adminStudyInsert";
	}
	

	
}
