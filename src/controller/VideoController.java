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
import member.vo.FaqVO;
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
	public String admonVideo(HttpSession session, Model m, StudyVO studyVO){
		List<VideoVO> vlist = null;
//		춤을 춰요 리스트 가져오기
		vlist = videoDao.videoBoard();
		m.addAttribute("vlist", vlist); //가져온 DB를 모델에 저장

		List<StudyVO> slist = null;
//		공부 해요 리스트 가져오기
		slist = videoDao.studyBoardn();
		m.addAttribute("slist", slist); //가져온 DB를 모델에 저장
		
		return "adminVideo";
	} 
	
//	춤을 춰요 영상삭제
	@RequestMapping("/adminVideoDelete.go")
	public String adminVideoDelete(VideoVO videoVO, Model m){
		int result = 0;
		result = videoDao.adminVideoDelete(videoVO);
		return "redirect:adminVideo.go";	
		}

//	공부 해요 영상삭제
	@RequestMapping("/adminStudyDelete.go")
	public String adminStudyDelete(StudyVO studyVO, Model m){
		int result = 0;
		result = videoDao.adminStudyDelete(studyVO);		
		return "redirect:adminVideo.go";	
		}

	
	//수정하기위한 춤을춰요 뷰 가져오기
	@RequestMapping("/adminVideoUpdate.go")
	public String VideoUpdate(VideoVO vo, Model m){
		VideoVO gVO = null;
		gVO = videoDao.videoBoardView(vo);
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		return "adminVideoUpdate";
	}
	
	//수정하기위한 공부해요 뷰 가져오기
		@RequestMapping("/adminStudyUpdate.go")
		public String StudyUpdate(StudyVO vo, Model m){
			StudyVO gVO = null;
			gVO = videoDao.studyBoardView(vo);	
			m.addAttribute("slist", gVO); //가져온 DB를 모델에 저장
			
			return "adminStudyUpdate";
		}
		
//		춤을 춰요 수정
		@RequestMapping("/adminVideoUpdateDoing.go")
		public String adminVideoUpdateDoing(VideoVO videoVO, Model m){
			int result = 0;
			result = videoDao.adminVideoUpdate(videoVO);
			return "redirect:adminVideo.go";	
			}
		
//		공부 해요 수정
		@RequestMapping("/adminStudyUpdateDoing.go")
		public String adminStudyUpdateDoing(StudyVO studyVO, Model m){
			int result = 0;
			result = videoDao.adminStudyUpdate(studyVO);
			return "redirect:adminVideo.go";	
			}
	
	
//	춤을 춰요 영상등록
	@RequestMapping("/adminVideoInsertDoing.go")
	public String VideoInput(VideoVO videoVO, Model m){
		int result = 0;
		result = videoDao.adminVideoInput(videoVO);
		return "redirect:adminVideo.go";
	}
	
//	페이징 처리된 춤을 춰요 리스트 가져오기
	@RequestMapping("/videoBoard.do")
	public String videoBoard(Model m, VideoVO videoVO){
		
		  //--페이징 처리
	    int totalCount = videoDao.videoListCount(videoVO); //게시물 총갯수를 구한다
	    videoVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    m.addAttribute("pageVO", videoVO);
	    //--페이징 처리
	    List<VideoVO>  videoList = videoDao.videoBoardp(videoVO);
	    m.addAttribute("list", videoList); //가져온 DB를 모델에 저장
		return "video/videoBoard";
	}
	
	
	

//	춤을 춰요 뷰(실행 페이지)를 띄우기 위한 정보 가져오기
	@RequestMapping("/videoBoardView.go")
	public String VideoView(VideoVO vo, Model m){
		VideoVO gVO =  videoDao.videoBoardView(vo);
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		return "videoBoardView";
	}
	

//관리자에서 공부해요 입력 실행	
	@RequestMapping("/adminStudyInsertDoing.go")
	public String VideoInput(StudyVO studyVO, Model m){
		int result = 0;
		result = videoDao.adminStudyInput(studyVO);
		return "redirect:adminVideo.go";
	}
	
	
	
	
//페이징 처리된 공부해요 뷰 가져오기	
	@RequestMapping("/studyBoard.do")
	public String StudyBoard(Model m, HttpSession session, StudyVO studyVO){
		  //--페이징 처리
	    int totalCount = videoDao.studyListCount(studyVO); //게시물 총갯수를 구한다
	    studyVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    studyVO.setPageSize(12);
	    m.addAttribute("pageVO", studyVO);
	    //--페이징 처리
	    List<StudyVO>  studyList = videoDao.studyBoard(studyVO);
		m.addAttribute("list", studyList); //가져온 DB를 모델에 저장
		return "video/studyBoard";
	}
	
//	공부해요 뷰(실행 페이지)를 띄우기위한 값 가져오기
	@RequestMapping("/studyBoardView.go")
	public String VideoView(StudyVO vo, Model m){
		StudyVO gVO =  videoDao.studyBoardView(vo);
		m.addAttribute("vlist", gVO); //가져온 DB를 모델에 저장
		return "studyBoardView";
	}
	
	

//	AJAX로 실행되는 춤을 춰요 추천 실행
	@RequestMapping("/videoBoardRecom.go")
	@ResponseBody
	public int flashBoardRecom(Model m, VideoVO vo, HttpSession session){
		int result = 0;
		List<VideoVO> recomList = null;
//		중복 추천을 방지하기위한 추천인 리스트 가져오기
		recomList = videoDao.VideoRecom(vo);
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		String Nid = memvo.getU_id();
		//세션에서 현재 사용자 id를 가져온후 vo에 저장
		vo.setD_recomId(Nid);
		//추천인 리스트의 사이즈만큼 반복문을 돌려서 현재 사용자가 추천인 리스트에 있는지 확인
		for(int i=0; i<recomList.size(); i++){
			if(recomList.get(i).getD_goodog().equals(Nid)){
				result = 1;
			}
		}
		//현재사용자가 추천인 리스트에 없으면 추천실행
		if(result == 0){ 
			videoDao.VideoRecomDoing(vo);
		}
		return result;
	}
	
//	AJAX로 실행되는 공부 해요 추천 실행
	@RequestMapping("/studyBoardRecom.go")
	@ResponseBody
	public int studyBoardRecom(Model m, StudyVO vo, HttpSession session){
		int result = 0;
		List<StudyVO> recomList = null;
//		중복 추천을 방지하기위한 추천인 리스트 가져오기
		recomList = videoDao.StudyRecom(vo);
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		String Nid = memvo.getU_id();
		//세션에서 현재 사용자 id를 가져온후 vo에 저장
		vo.setV_recomId(Nid);
		//추천인 리스트의 사이즈만큼 반복문을 돌려서 현재 사용자가 추천인 리스트에 있는지 확인
		for(int i=0; i<recomList.size(); i++){
			if(recomList.get(i).getV_goodog().equals(Nid)){
				result = 1;
			}
		}
		//현재사용자가 추천인 리스트에 없으면 추천실행
		if(result == 0){ 
			videoDao.StudyRecomDoing(vo);
		}
		return result;
	}
	
}
