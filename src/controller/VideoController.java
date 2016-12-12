package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.AdminGameDaoImpl;
import member.dao.VideoDaoImpl;
import member.vo.GameVO;
import member.vo.MemberVO;
import member.vo.StudyVO;
import member.vo.VideoVO;

@Controller
public class VideoController {

	@Autowired
	private VideoDaoImpl videoDao;
	  
//	영상관리 페이지 값 가져오기
	@RequestMapping("/adminVideo.go")
	public String admonVideo(HttpSession session, Model m){
		List<VideoVO> vlist = null;
		vlist = videoDao.videoBoard();
		m.addAttribute("vlist", vlist); //가져온 DB를 모델에 저장
		
		List<StudyVO> slist = null;
		slist = videoDao.studyBoard();
		m.addAttribute("slist", slist); //가져온 DB를 모델에 저장
		
		return "adminVideo";
	} 
	
//	춤을 춰요 영상삭제
	@RequestMapping("/adminVideoDelete.go")
	public String adminVideoDelete(VideoVO videoVO, Model m){
		int result = 0;
		result = videoDao.adminVideoDelete(videoVO);
		
		if(result==1){
			System.out.println("삭제완료");	
		}else{
		System.out.println("삭제실패");
		}
		return "redirect:adminVideo.go";	
		}

//	공부 해요 영상삭제
	@RequestMapping("/adminStudyDelete.go")
	public String adminStudyDelete(StudyVO studyVO, Model m){
		int result = 0;
		result = videoDao.adminStudyDelete(studyVO);
		
		if(result==1){
			System.out.println("삭제완료");	
		}else{
		System.out.println("삭제실패");
		}
		return "redirect:adminVideo.go";	
		}

	
	//수정하기위한 춤을춰요 뷰 가져오기
	@RequestMapping("/adminVideoUpdate.go")
	public String VideoUpdate(VideoVO vo, Model m){
		VideoVO gVO = null;
		gVO = videoDao.videoBoardView(vo);
		
		if(gVO!=null){
			System.out.println("가져오기완료");
			
		}else{
		System.out.println("가져오기실패");
		}
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		
		return "adminVideoUpdate";
	}
	
	//수정하기위한 공부해요 뷰 가져오기
		@RequestMapping("/adminStudyUpdate.go")
		public String StudyUpdate(StudyVO vo, Model m){
			StudyVO gVO = null;
			gVO = videoDao.studyBoardView(vo);
			
			if(gVO!=null){
				System.out.println("가져오기완료");
				
			}else{
			System.out.println("가져오기실패");
			}
			m.addAttribute("slist", gVO); //가져온 DB를 모델에 저장
			
			return "adminStudyUpdate";
		}
		
		
//		춤을 춰요 수정
		@RequestMapping("/adminVideoUpdateDoing.go")
		public String adminVideoUpdateDoing(VideoVO videoVO, Model m){
			int result = 0;
			result = videoDao.adminVideoUpdate(videoVO);
			
			if(result==1){
				System.out.println("수정완료");	
			}else{
			System.out.println("수정실패");
			}
			return "redirect:adminVideo.go";	
			}
		
//		공부 해요 수정
		@RequestMapping("/adminStudyUpdateDoing.go")
		public String adminStudyUpdateDoing(StudyVO studyVO, Model m){
			int result = 0;
			result = videoDao.adminStudyUpdate(studyVO);
			
			if(result==1){
				System.out.println("수정완료");	
			}else{
			System.out.println("수정실패");
			}
			return "redirect:adminVideo.go";	
			}
	
	
//	춤을 춰요 영상등록
	@RequestMapping("/adminVideoInsertDoing.go")
	public String VideoInput(VideoVO videoVO, Model m){
		int result = 0;
		result = videoDao.adminVideoInput(videoVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "redirect:adminVideo.go";
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
	

	
	@RequestMapping("/adminStudyInsertDoing.go")
	public String VideoInput(StudyVO studyVO, Model m){
		int result = 0;
		result = videoDao.adminStudyInput(studyVO);
		
		if(result==1){
			System.out.println("등록완료");
			
		}else{
		System.out.println("등록실패");
		}
		
		return "redirect:adminVideo.go";
	}
	
	
	
	
	
	@RequestMapping("/studyBoard.do")
	public String StudyBoard(Model m){
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
	
	
	
	@RequestMapping("/videoBoardRecom.go")
	@ResponseBody
	public int flashBoardRecom(Model m, VideoVO vo, HttpSession session){
		int result = 0;
		List<VideoVO> recomList = null;
		recomList = videoDao.VideoRecom(vo);
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		String Nid = memvo.getU_id();
		vo.setD_recomId(Nid);
		for(int i=0; i<recomList.size(); i++){
			System.out.println(recomList.get(i).getD_goodog());
			if(recomList.get(i).getD_goodog().equals(Nid)){
				result = 1;
				
			}
		}
		if(result == 0){ 
			videoDao.VideoRecomDoing(vo);
		}
		System.out.println("id:"+Nid);
		return result;
	}
	
	
	@RequestMapping("/studyBoardRecom.go")
	@ResponseBody
	public int studyBoardRecom(Model m, StudyVO vo, HttpSession session){
		int result = 0;
		List<StudyVO> recomList = null;
		recomList = videoDao.StudyRecom(vo);
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		String Nid = memvo.getU_id();
		vo.setV_recomId(Nid);
		for(int i=0; i<recomList.size(); i++){
			System.out.println(recomList.get(i).getV_goodog());
			if(recomList.get(i).getV_goodog().equals(Nid)){
				result = 1;
				
			}
		}
		if(result == 0){ 
			videoDao.StudyRecomDoing(vo);
		}
		System.out.println("id:"+Nid);
		return result;
	}
	
}
