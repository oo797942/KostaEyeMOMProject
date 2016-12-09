package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.AdminGameDaoImpl;
import member.dao.VideoDaoImpl;
import member.vo.GameVO;
import member.vo.VideoVO;

@Controller
public class VideoController {

	@Autowired
	private VideoDaoImpl videoDao;
	   
	
	
//	@RequestMapping("/videoBoard.do")
//	public String flashBoard(Model m){
//		List<GameVO> list = null;
//		list = gameDao.GameBoard();
//		System.out.println(list);
//		m.addAttribute("list", list); //가져온 DB를 모델에 저장
//		return "game/flashBoard";
//	}
	
	
	@RequestMapping("/adminVideoInsertDoing.go")
	public String VideoInput(VideoVO videoVO, Model m){
		int result = 0;
		result = videoDao.adminVideoInput(videoVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "adminVideo.go";
	}
	
	
	
	
	
//	@RequestMapping("/flashBoardView.go")
//	public String GameView(GameVO vo, Model m){
//		GameVO gVO = null;
//		gVO = gameDao.GameView(vo);
//		
//		if(gVO!=null){
//			System.out.println("가져오기완료");
//			
//		}else{
//		System.out.println("가져오기실패");
//		}
//		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
//		
//		return "flashBoardView";
//	}
	
}
