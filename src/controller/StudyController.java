package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.AdminGameDaoImpl;
import member.dao.VideoDaoImpl;
import member.vo.GameVO;
import member.vo.StudyVO;
import member.vo.VideoVO;

@Controller
public class StudyController {

	@Autowired
	private VideoDaoImpl videoDao;
	   
	
	

	
	@RequestMapping("/adminStudyInsertDoing.go")
	public String VideoInput(StudyVO studyVO, Model m){
		int result = 0;
		result = videoDao.adminStudyInput(studyVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "adminVideo.go";
	}
	
	
	
	
	
	@RequestMapping("/studyBoard.do")
	public String videoBoard(Model m){
		List<StudyVO> list = null;
		list = videoDao.studyBoard();
		System.out.println(list);
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		return "video/studyBoard";
	}
	
	
	
	
	@RequestMapping("/studyBoardView.go")
	public String VideoView(StudyVO vo, Model m){
		StudyVO gVO =  videoDao.studyBoardView(vo);
		
		if(gVO!=null){
			System.out.println("가져오기완료");
			
		}else{
		System.out.println("가져오기실패");
		}
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		
		return "studyBoardView";
	}
	
}
