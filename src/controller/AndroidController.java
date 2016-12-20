package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.BoardDaoImpl;
import member.dao.LoginDaoImpl;
import member.dao.MemberDaoImpl;
import member.dao.VideoDaoImpl;
import member.vo.BoardVO;
import member.vo.MemberVO;
import member.vo.ReplyVO;
import member.vo.StudyVO;
import member.vo.VideoVO;

@Controller
public class AndroidController {

	@Autowired
	private MemberDaoImpl memberDao;
	@Autowired
	private LoginDaoImpl loginDao;
	@Autowired
	private VideoDaoImpl videoDao;
	@Autowired
	private BoardDaoImpl boardDao;
	
	// 로그인
	@RequestMapping(value = "/android_login.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> androidLogin(HttpServletRequest request) {

		// 아이디와 비밀번호를 받아온다.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// 로그인 성공 체크를 위한 변수 check
		int check = 0;

		System.out.println("id 받아졌나?>> " + id);
		System.out.println("pw 받아졌나??>> " + pw);

		Map<String, String> result = new HashMap<String, String>();
		MemberVO memberVO = new MemberVO();

		if (id == null || id.equals("")) {// 아이디가 입력되지 않았을 때
			result.put("data1", "아이디를 입력해주세요.");
			result.put("data2", "no");
		} else if (pw == null || pw.equals("")) {// 비밀번호가 입력되지 않았을 때
			result.put("data1", "비밀번호를 입력해주세요.");
			result.put("data2", "no");
		} else {
			// 모두 입력되었을 시 memberVO에 아이디와 비밀번호 설정
			memberVO.setU_id(id);
			memberVO.setU_pass(pw);
			// LoginCheck를 해주고 몇 개의 결과가 리턴되는지 check에 받는다.
			check = loginDao.androidLoginCheck(memberVO);

			if (check > 0) { // 1개의 결과(0개 초과)가 온다면 로그인 성공
				MemberVO vo = loginDao.memberLogin(memberVO);
				// 로그인 성공 메세지
				result.put("data1", "로그인에 성공하였습니다.");
				// intent를 넘겨주기 위한 변수
				result.put("data2", "yes");
				result.put("nickname", vo.getU_nick());
				result.put("id", vo.getU_id());
			} else { //0개의 값이 리턴된 경우엔 로그인 실패
				result.put("data1", "아이디와 비밀번호를 확인해주세요.");
				result.put("data2", "no");
			}

		}

		return result;
	}
	
	
	// 비디오 리스트(춤을춰요)
	@RequestMapping(value = "/android_video_list.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, List> androidVideoList(HttpServletRequest request) {

		// 비디오 리스트(춤을춰요)를 뽑아온다.
		List list = videoDao.videoBoard();
		Map<String, List> result = new HashMap<String, List>();
		System.out.println("list값 :: " +list);
		// 뽑아온 값을 Map에 넣고 리턴
		result.put("list", list);

		return result;
	}
	
	// 스터디 리스트(공부해요)
	@RequestMapping(value = "/android_study_list.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, List> androidStudyList(HttpServletRequest request) {

		// 비디오 리스트(춤을춰요)를 뽑아온다.
		List list = videoDao.studyBoard();
		Map<String, List> result = new HashMap<String, List>();
		System.out.println("list값 :: " +list);
		// 뽑아온 값을 Map에 넣고 리턴
		result.put("list", list);

		return result;
	}
	
	// 비디오 뷰(춤을춰요, 공부해요)
	@RequestMapping(value = "/android_video_view.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> androidVideoView(HttpServletRequest request) {
		
		Map<String, String> result = new HashMap<String, String>();
		
		int listCount = 0;
		// 비디오 번호를 받아온다.
		int d_no = Integer.parseInt(request.getParameter("d_no"));
		int v_no = Integer.parseInt(request.getParameter("v_no"));
		String Nid = request.getParameter("id");
		String goodPress = request.getParameter("goodPress");
		System.out.println("goodPress>>> " + goodPress);
		System.out.println("d_no 값 >> " + d_no);
		System.out.println("v_no 값 >> " + v_no);
		
		// 춤을춰요 일 때(kid_video)
		if(d_no>0){
			VideoVO vo = new VideoVO();
			vo.setD_no(d_no);
			
			List<VideoVO> recomList = null;
			recomList = videoDao.VideoRecom(vo);
			vo.setD_recomId(Nid);
			for(int i=0; i<recomList.size(); i++){
				System.out.println(recomList.get(i).getD_goodog());
				if(recomList.get(i).getD_goodog().equals(Nid)){
					System.out.println("이미 추천인이 있음");
					System.out.println("Nid :: " + Nid + ", 추천인 id:: " + recomList.get(i).getD_goodog());
					listCount = 1;
				}
			}
			if(listCount == 0){
				result.put("goodcheck","no");
			}else{
				result.put("goodcheck","yes");
			}
			
			if(goodPress == null){
				
			}else{
				if(listCount == 0){
					result.put("goodcheck","no");
					videoDao.VideoRecomDoing(vo);
				}else{
					result.put("goodcheck","yes");
				}
			}
			
			System.out.println("id:"+Nid);
			
			
			VideoVO videoVO =  videoDao.videoBoardView(vo);
			
			if(videoVO!=null){
			System.out.println("가져오기 성공");
			}else{
			System.out.println("가져오기 실패");
			}
			
			result.put("d_title", videoVO.getD_title());
			result.put("d_content", videoVO.getD_content());
			result.put("d_video", videoVO.getD_video());
			result.put("d_count", String.valueOf(videoVO.getD_count()));
			result.put("d_good", String.valueOf(videoVO.getD_good()));
			
		}else if(v_no > 0){ // 공부해요 일 때(kid_study)
			
			StudyVO vo = new StudyVO();
			vo.setV_no(v_no);
			
			List<StudyVO> recomList = null;
			recomList = videoDao.StudyRecom(vo);
			vo.setV_recomId(Nid);
			for(int i=0; i<recomList.size(); i++){
				System.out.println(recomList.get(i).getV_goodog());
				if(recomList.get(i).getV_goodog().equals(Nid)){
					System.out.println("이미 추천인이 있음");
					System.out.println("Nid :: " + Nid + ", 추천인 id:: " + recomList.get(i).getV_goodog());
					listCount = 1;
				}
			}
			if(listCount == 0){
				result.put("goodcheck","no");
			}else{
				result.put("goodcheck","yes");
			}
			
			if(goodPress == null){
				
			}else{
				if(listCount == 0){
					result.put("goodcheck","no");
					videoDao.StudyRecomDoing(vo);
				}else{
					result.put("goodcheck","yes");
				}
			}
			
			System.out.println("id:"+Nid);
			
			
			StudyVO studyVO =  videoDao.studyBoardView(vo);
			
			if(studyVO!=null){
			System.out.println("가져오기 성공");
			}else{
			System.out.println("가져오기 실패");
			}
			
			result.put("v_title", studyVO.getV_title());
			result.put("v_content", studyVO.getV_content());
			result.put("v_video", studyVO.getV_video());
			result.put("v_count", String.valueOf(studyVO.getV_count()));
			result.put("v_good", String.valueOf(studyVO.getV_good()));
			
			
		}

		return result;
	}
	
	// 육아꿀팁 리스트
	@RequestMapping(value = "/android_tip_list.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, List> androidTipList(HttpServletRequest request) {
		Map<String, List> result = new HashMap<String, List>();
		List<BoardVO> list= null;
		
		list = boardDao.allBoard("tip");  //게시판별 모든 리스트를 가져오기위해 
		System.out.println(list.size());
		for(int i=0; i<list.size();i++){
		BoardVO boardVO=list.get(i);
		List <ReplyVO> listVO = boardDao.callReply(boardVO);
		
		list.get(i).setB_recount(listVO.size());
		}
		
		result.put("list", list); //가져온 DB를 모델에 저장
		//m.addAttribute("title", "tip" ); // 게시판 종류 모델에 저장
		
		System.out.println("list값 :: " +list);
		// 뽑아온 값을 Map에 넣고 리턴
		result.put("list", list);

		return result;
	}
	
}
