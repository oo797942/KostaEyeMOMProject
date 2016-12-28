package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
			} else { // 0개의 값이 리턴된 경우엔 로그인 실패
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
		System.out.println("list값 :: " + list);
		// 뽑아온 값을 Map에 넣고 리턴
		result.put("list", list);

		return result;
	}

	// 스터디 리스트(공부해요)
	@RequestMapping(value = "/android_study_list.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, List> androidStudyList(HttpServletRequest request, StudyVO vo) {

		// 비디오 리스트(춤을춰요)를 뽑아온다.
		List list = videoDao.studyBoardAndroid();
		Map<String, List> result = new HashMap<String, List>();
		System.out.println("list값 :: " + list);
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
		if (d_no > 0) {
			VideoVO vo = new VideoVO();
			vo.setD_no(d_no);

			List<VideoVO> recomList = null;
			recomList = videoDao.VideoRecom(vo);
			vo.setD_recomId(Nid);
			for (int i = 0; i < recomList.size(); i++) {
				System.out.println(recomList.get(i).getD_goodog());
				if (recomList.get(i).getD_goodog().equals(Nid)) {
					System.out.println("이미 추천인이 있음");
					System.out.println("Nid :: " + Nid + ", 추천인 id:: " + recomList.get(i).getD_goodog());
					listCount = 1;
				}
			}
			if (listCount == 0) {
				result.put("goodcheck", "no");
			} else {
				result.put("goodcheck", "yes");
			}

			if (goodPress == null) {

			} else {
				if (listCount == 0) {
					result.put("goodcheck", "no");
					videoDao.VideoRecomDoing(vo);
				} else {
					result.put("goodcheck", "yes");
				}
			}

			System.out.println("id:" + Nid);

			VideoVO videoVO = videoDao.videoBoardView(vo);

			if (videoVO != null) {
				System.out.println("가져오기 성공");
			} else {
				System.out.println("가져오기 실패");
			}

			result.put("d_title", videoVO.getD_title());
			result.put("d_content", videoVO.getD_content());
			result.put("d_video", videoVO.getD_video());
			result.put("d_count", String.valueOf(videoVO.getD_count()));
			result.put("d_good", String.valueOf(videoVO.getD_good()));

		} else if (v_no > 0) { // 공부해요 일 때(kid_study)

			StudyVO vo = new StudyVO();
			vo.setV_no(v_no);

			List<StudyVO> recomList = null;
			recomList = videoDao.StudyRecom(vo);
			vo.setV_recomId(Nid);
			for (int i = 0; i < recomList.size(); i++) {
				System.out.println(recomList.get(i).getV_goodog());
				if (recomList.get(i).getV_goodog().equals(Nid)) {
					System.out.println("이미 추천인이 있음");
					System.out.println("Nid :: " + Nid + ", 추천인 id:: " + recomList.get(i).getV_goodog());
					listCount = 1;
				}
			}
			if (listCount == 0) {
				result.put("goodcheck", "no");
			} else {
				result.put("goodcheck", "yes");
			}

			if (goodPress == null) {

			} else {
				if (listCount == 0) {
					result.put("goodcheck", "no");
					videoDao.StudyRecomDoing(vo);
				} else {
					result.put("goodcheck", "yes");
				}
			}

			System.out.println("id:" + Nid);

			StudyVO studyVO = videoDao.studyBoardView(vo);

			if (studyVO != null) {
				System.out.println("가져오기 성공");
			} else {
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
		List<BoardVO> list = null;

		list = boardDao.allBoard("tip"); // 게시판 리스트를 가져오기위해
		System.out.println(list.size());
		for (int i = 0; i < list.size(); i++) {
			BoardVO boardVO = list.get(i);
			List<ReplyVO> listVO = boardDao.callReply(boardVO);

			boardVO.setB_recount(listVO.size());
			System.out.println("" + boardVO.getB_recount());
			String[] iplist = new String[4]; // " . "을 제거한 ip를 담을 list
			String rip; // 보안처리된 ip 담을 문자열
			String ip = boardVO.getB_ip(); // 작성자 ip가져오기
			StringTokenizer st = new StringTokenizer(ip, ".");
			for (int j = 0; st.hasMoreTokens(); j++) {

				iplist[j] = (String) st.nextToken(); // " . "을 제거한 ip를 list에 담는다

			}
			rip = iplist[0] + "." + iplist[1] + ".*.*"; // 뒤에 두자리 보안처리
			boardVO.setB_ip(rip); // 보안ip 다시 담기
		}

		result.put("list", list); // 가져온 DB를 모델에 저장
		// m.addAttribute("title", "tip" ); // 게시판 종류 모델에 저장

		System.out.println("list값 :: " + list);
		// 뽑아온 값을 Map에 넣고 리턴
		result.put("list", list);

		return result;
	}

	@RequestMapping(value = "/android_board_view.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> androidBoardView(HttpServletRequest request) {
		Map<String, String> result = new HashMap<String, String>();
		BoardVO boardVO = new BoardVO();

		int b_no = Integer.parseInt(request.getParameter("b_no"));
		String Nid = request.getParameter("id");
		String goodPress = request.getParameter("goodPress");
		String nick = request.getParameter("nick");

		boardVO.setB_no(b_no);
		if (nick == null) {

		} else {
			boardVO.setB_nick(nick);
		}

		result.put("goodcheck", "no");

		boardVO.setU_id(Nid);
		List<BoardVO> lists = boardDao.checkGoodId(boardVO);

		if (lists.isEmpty()) {

		} else {
			for (int i = 0; i < lists.size(); i++) {
				System.out.println("추천인 : " + Nid);
				System.out.println("이미 추천한 사람 : " + lists.get(i).getB_goodog());
				if (lists.get(i).getB_goodog().equals(Nid)) {
					System.out.println("같은이름");
					result.put("goodcheck", "yes");
				}
			}
		}

		if (goodPress == null) {

		} else {
			boardDao.countGood(boardVO);
		}

		BoardVO vo = boardDao.viewBoard(boardVO); // 게시물 내용 호출
		List<ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출

		// ip보안을 위해 * 처리
		String ip = vo.getB_ip(); // 작성자 ip가져오기
		StringTokenizer st = new StringTokenizer(ip, ".");
		String[] list = new String[4]; // " . "을 제거한 ip를 담을 list
		String rip; // 보안처리된 ip 담을 문자열
		for (int i = 0; st.hasMoreTokens(); i++) {

			list[i] = (String) st.nextToken(); // " . "을 제거한 ip를 list에 담는다

		}
		rip = list[0] + "." + list[1] + ".*.*"; // 뒤에 두자리 보안처리
		vo.setB_ip(rip); // 보안ip 다시 담기
		vo.setB_recount(listVO.size());

		result.put("u_id", vo.getU_id());
		result.put("b_no", String.valueOf(vo.getB_no()));
		result.put("b_cate", vo.getB_cate());
		result.put("b_title", vo.getB_title());
		result.put("b_content", vo.getB_content());
		result.put("b_ip", vo.getB_ip());
		result.put("b_good", vo.getB_good());
		result.put("b_count", String.valueOf(vo.getB_count()));
		result.put("b_nick", vo.getB_nick());
		result.put("b_date", vo.getB_date());
		result.put("b_photo1name", vo.getB_photo1name());
		result.put("b_photo2name", vo.getB_photo2name());
		result.put("b_photo3name", vo.getB_photo3name());
		result.put("b_scate", vo.getB_scate());
		result.put("b_recount", String.valueOf(vo.getB_recount()));
		result.put("b_good", vo.getB_good());
		// m.addAttribute("list", listVO); //리플 정보 모델에 담기

		return result;
	}
	@RequestMapping(value = "/android_reply_view.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, List> androidReplyView(HttpServletRequest request) {
		Map<String, List> result = new HashMap<String, List>();
		BoardVO boardVO = new BoardVO();

		int b_no = Integer.parseInt(request.getParameter("b_no"));

		boardVO.setB_no(b_no);

		List<ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출

		result.put("list", listVO);
		// m.addAttribute("list", listVO); //리플 정보 모델에 담기

		return result;
	}
	
	
	@RequestMapping(value = "/android_reply_del.go", method = RequestMethod.POST)
	@ResponseBody
	public void androidReplyDel(HttpServletRequest request) {
		ReplyVO rvo = new ReplyVO();
		String id = request.getParameter("id");
		int no = Integer.parseInt(request.getParameter("b_no"));
		int re_no = Integer.parseInt(request.getParameter("re_no"));
		
		rvo.setRe_id(id);
		rvo.setB_no(no);
		rvo.setRe_no(re_no);
		
		boardDao.replDelte(rvo);
	}

	
	@RequestMapping(value = "/android_reply_input.go", method = RequestMethod.POST)
	@ResponseBody
	public void androidReplyInput(HttpServletRequest request) {
		ReplyVO rvo = new ReplyVO();
		
		String id = request.getParameter("id");
		String nick = request.getParameter("nick");
		String content = request.getParameter("content");
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		String ip = request.getRemoteAddr(); // 사용자 ip값 얻어오기
		
		rvo.setRe_ip(ip); //ip값 저장
		rvo.setRe_id(id);
		rvo.setRe_nick(nick);
		rvo.setB_no(b_no);
		rvo.setRe_content(content);
		
		boardDao.writeReply(rvo);	//DB넘김 
	}

	
	@RequestMapping(value = "/android_board_del.go", method = RequestMethod.POST)
	@ResponseBody
	public void androidBoardDel(HttpServletRequest request) {
		BoardVO vo = new BoardVO();
		int b_no = Integer.parseInt(request.getParameter("b_no"));
		vo.setB_no(b_no);
		
		boardDao.deleteBoard(vo);
		
	}
	
	@RequestMapping(value = "/android_board_input.go", method = RequestMethod.POST)
	@ResponseBody
	public void androidBoardInput(HttpServletRequest request) {
		BoardVO boardVO = new BoardVO();
		
		String ip = request.getRemoteAddr(); //작성자 ip
		String cate = request.getParameter("cate");
		String id = request.getParameter("id");
		String nick = request.getParameter("nick");
		String content = request.getParameter("content");
		String title = request.getParameter("title");
		
		boardVO.setB_cate(cate);
		System.out.println("cate >> " + cate);
		boardVO.setB_content(content.replaceAll("\r\n","<br>"));
		System.out.println("content >> " + content);
		boardVO.setU_id(id);		// 아이디값 보드vo에 넣어주기
		System.out.println("id >> " + id);
		boardVO.setB_ip(ip); 						//ip
		System.out.println("ip >> " + ip);
		boardVO.setB_nick(nick);	//nickname
		System.out.println("nick >> " + nick);
		boardVO.setB_title(title);
		System.out.println("title >> " + title);
		int result = boardDao.writeBoard(boardVO);	//작성 데이터 db로
		System.out.println("result >> " + result);

	}
	
	@RequestMapping(value = "/android_board_modify_before.go", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> androidBoardModifyBefore(HttpServletRequest request) {
		Map<String, String> result = new HashMap<String, String>();
		BoardVO boardVO = new BoardVO();
		boardVO.setB_no(Integer.parseInt(request.getParameter("b_no")));
		BoardVO vo = boardDao.viewBoard(boardVO); // 해당글 가져오기
	
		result.put("b_title", vo.getB_title());
		result.put("b_content", vo.getB_content());
		result.put("b_no", String.valueOf(vo.getB_no()));
		
		return result;
	}
	

	
	@RequestMapping(value = "/android_board_modify_fin.go", method = RequestMethod.POST)
	@ResponseBody
	public void androidBoardModifyFin(HttpServletRequest request) {
		BoardVO vo = new BoardVO();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String no = request.getParameter("b_no");
		
		vo.setB_no(Integer.parseInt(no));
		vo.setB_title(title);
		vo.setB_content(content);
		
		int result = boardDao.updateBoard(vo);
		System.out.println("reuslt >> " + result);
		
	}
	

}
