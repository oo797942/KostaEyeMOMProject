package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.AdminGameDaoImpl;
import member.vo.GameVO;
import member.vo.GroupPurchaseVO;
import member.vo.MemberVO;

@Controller
public class GameController {

	@Autowired
	private AdminGameDaoImpl gameDao;
	   
	//디비 게임리스트 가져오기
	@RequestMapping("/adminGame.go")
	public String adminGame(HttpSession session, Model m, GameVO gameVO){
		
	    int totalCount = gameDao.gameListCount(); //게시물 총갯수를 구한다
	    gameVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    m.addAttribute("pageVO", gameVO);

	    //--페이징 처리
	    
	    List<GameVO>  gList = gameDao.GameBoard(gameVO);

		m.addAttribute("list", gList); //가져온 DB를 모델에 저장
		
		
//		List<GameVO> list = null;
//		list = gameDao.GameBoard();
//		System.out.println(list);
//		m.addAttribute("list", list); //가져온 DB를 모델에 저장
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
	public String flashBoard(Model m, GameVO gameVO){
		
	    int totalCount = gameDao.gameListCount(); //게시물 총갯수를 구한다
	    gameVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    m.addAttribute("pageVO", gameVO);

	    //--페이징 처리
	    
	    List<GameVO>  gList = gameDao.GameBoard(gameVO);

		m.addAttribute("list", gList); //가져온 DB를 모델에 저장
		
		
//		List<GameVO> list = null;
//		list = gameDao.GameBoard();
//		System.out.println(list);
//		m.addAttribute("list", list); //가져온 DB를 모델에 저장
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
	
	
	@RequestMapping("/flashBoardRecom.go")
	@ResponseBody
	public int flashBoardRecom(Model m, GameVO vo, HttpSession session){
		int result = 0;
		List<GameVO> recomList = null;
		recomList = gameDao.GameRecom(vo);
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		String Nid = memvo.getU_id();
		vo.setG_recomId(Nid);
		for(int i=0; i<recomList.size(); i++){
			System.out.println(recomList.get(i).getG_goodog());
			if(recomList.get(i).getG_goodog().equals(Nid)){
				result = 1;
				
			}
		}
		if(result == 0){ 
			gameDao.GameRecomDoing(vo);
		}
		System.out.println("id:"+Nid);
		return result;
	}
	
}
