package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.AdminGameDaoImpl;
import member.dao.MemberJoinDaoImpl;
import member.vo.GameVO;
import member.vo.MemberVO;

@Controller
public class GameController {

	@Autowired
	private AdminGameDaoImpl adminGameDao;
	   
	
	
	@RequestMapping("/flashBoard.do")
	public String flashBoard(){
		return "game/flashBoard";
	}
	
	
	
	@RequestMapping("/adminGameInsert.do")
	public String GameInput(GameVO gameVO, Model m){
		int result = 0;
		result = adminGameDao.adminGameInput(gameVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "adminGame";
	}
}
