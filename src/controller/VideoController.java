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
	
	
	@RequestMapping("/videoBoard.do")
	public String videoBoard(Model m){
		List<VideoVO> list = null;
		list = videoDao.videoBoard();
		System.out.println(list);
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		return "video/videoBoard";
	}
	
	
	
	
	@RequestMapping("/videoBoardView.go")
	public String VideoView(VideoVO vo, Model m){
		System.out.println(vo.getD_no());
		VideoVO gVO =  videoDao.videoBoardView(vo);
		
		if(gVO!=null){
			System.out.println("가져오기완료");
			
		}else{
		System.out.println("가져오기실패");
		}
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		
		return "videoBoardView";
	}
	
}
