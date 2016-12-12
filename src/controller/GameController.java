package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.AdminGameDaoImpl;
import member.vo.GameVO;

@Controller
public class GameController {

	@Autowired
	private AdminGameDaoImpl gameDao;
	   
	//디비 게임리스트 가져오기
	@RequestMapping("/adminGame.go")
	public String adminGame(HttpSession session, Model m){
		List<GameVO> list = null;
		list = gameDao.GameBoard();
		System.out.println(list);
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		return "adminGame";
	}
	
	
//	게임삭제
	@RequestMapping("/adminGameDelete.go")
	public String adminGameDelete(GameVO gameVO, Model m){
		int result = 0;
		result = gameDao.adminGameDelete(gameVO);
		
		if(result==1){
			System.out.println("삭제완료");	
		}else{
		System.out.println("삭제실패");
		}
		return "redirect:adminGame.go";	
		}
	
	//수정하기위한 게임 뷰 가져오기
		@RequestMapping("/adminGameUpdate.go")
		public String GameUpdate(GameVO vo, Model m){
			GameVO gVO = null;
			gVO = gameDao.GameView(vo);
			
			if(gVO!=null){
				System.out.println("가져오기완료");
				
			}else{
			System.out.println("가져오기실패");
			}
			m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
			
			return "adminGameUpdate";
		}
		
//		게임수정
		@RequestMapping("/adminGameUpdateDoing.go")
		public String adminGameUpdateDoing(GameVO gameVO, Model m){
			int result = 0;
			result = gameDao.adminGameUpdate(gameVO);
			
			if(result==1){
				System.out.println("수정완료");	
			}else{
			System.out.println("수정실패");
			}
			return "redirect:adminGame.go";	
			}
		
	
	
	//게임 리스트 가져오기
	@RequestMapping("/flashBoard.do")
	public String flashBoard(Model m){
		List<GameVO> list = null;
		list = gameDao.GameBoard();
		System.out.println(list);
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		return "game/flashBoard";
	}
	
	
	//게임 등록
	@RequestMapping("/adminGameInsertDoing.go")
	public String GameInput(GameVO gameVO, Model m){
		int result = 0;
		result = gameDao.adminGameInput(gameVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "redirect:adminGame.go";
	}
	
	
	
	
	//게임 뷰 가져오기
	@RequestMapping("/flashBoardView.go")
	public String GameView(GameVO vo, Model m){
		GameVO gVO = null;
		gVO = gameDao.GameView(vo);
		
		if(gVO!=null){
			System.out.println("가져오기완료");
			
		}else{
		System.out.println("가져오기실패");
		}
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		
		return "flashBoardView";
	}
	
}
