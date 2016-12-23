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
		return "adminGame";
	}
	
	
//	게임삭제
	@RequestMapping("/adminGameDelete.go")
	public String adminGameDelete(GameVO gameVO, Model m){
		int result = 0;
		result = gameDao.adminGameDelete(gameVO);
		return "redirect:adminGame.go";	
		}
	
	//수정하기위한 게임 뷰 가져오기
		@RequestMapping("/adminGameUpdate.go")
		public String GameUpdate(GameVO vo, Model m){
			GameVO gVO = null;
			gVO = gameDao.GameView(vo);
			m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장			
			return "adminGameUpdate";
		}
		
//		게임수정
		@RequestMapping("/adminGameUpdateDoing.go")
		public String adminGameUpdateDoing(GameVO gameVO, Model m){
			int result = 0;
			result = gameDao.adminGameUpdate(gameVO);
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
		return "game/flashBoard";
	}
	
	
	//게임 등록
	@RequestMapping("/adminGameInsertDoing.go")
	public String GameInput(GameVO gameVO, Model m){
		int result = 0;
		result = gameDao.adminGameInput(gameVO);
		return "redirect:adminGame.go";
	}
	
	//게임 뷰 가져오기
	@RequestMapping("/flashBoardView.go")
	public String GameView(GameVO vo, Model m){
		GameVO gVO = null;
		gVO = gameDao.GameView(vo);
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		return "flashBoardView";
	}
	

//AJAX로 게임 추천 실행
	@RequestMapping("/flashBoardRecom.go")
	@ResponseBody
	public int flashBoardRecom(Model m, GameVO vo, HttpSession session){
		int result = 0;
		List<GameVO> recomList = null;
//중복 추천 방지를 위해 추천인 리스트를 가져온다
		recomList = gameDao.GameRecom(vo);
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		String Nid = memvo.getU_id();
//	세선에서 현재 사용자의 id값을 가져온후, GameVO에 저장한다
		vo.setG_recomId(Nid);
//가져온 추천인 리스트이 사이즈만큼 반복문을 사용하여 현재 사용자 아이디값과 같은게 있는지 체크한다.
		for(int i=0; i<recomList.size(); i++){
			if(recomList.get(i).getG_goodog().equals(Nid)){
				result = 1;
			}
		}
		if(result == 0){ 
//			현재 사용자가 추천인 리스트에 없다면 추천을 실행한다
			gameDao.GameRecomDoing(vo);
		}
		return result;
	}
	
}
