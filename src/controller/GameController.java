package controller;

import java.util.List;

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
	   
	
	
	@RequestMapping("/flashBoard.do")
	public String flashBoard(Model m){
		List<GameVO> list = null;
		list = gameDao.GameBoard();
		System.out.println(list);
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		return "game/flashBoard";
	}
	
	
	
	@RequestMapping("/adminGameInsertDoing.go")
	public String GameInput(GameVO gameVO, Model m){
		int result = 0;
		result = gameDao.adminGameInput(gameVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "adminGame.go";
	}
}
