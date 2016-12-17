package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.dao.BoardDaoImpl;
import member.dao.CountDaoImpl;
import member.dao.GroupPurchaseDaoImpl;
import member.dao.MemberDaoImpl;
import member.dao.QnADaoImpl;
import member.dao.VideoDaoImpl;
import member.vo.BoardVO;
import member.vo.CountVO;
import member.vo.GameVO;
import member.vo.GroupPurchaseVO;
import member.vo.QnAVO;
import member.vo.StudyVO;
import member.vo.VideoVO;

@Controller
public class UserController {

	@Autowired
	private QnADaoImpl qnaDao;
	@Autowired
	private GroupPurchaseDaoImpl purchaseDao;
	@Autowired
	private CountDaoImpl countDao;
	@Autowired
	private BoardDaoImpl boardDao;
	@Autowired
	private MemberDaoImpl memberDao;
	@Autowired
	private VideoDaoImpl videoDao;

	@RequestMapping("/home.go")
	public String goMain(Model m, HttpSession session) {

		// 방문자수 체크를 위한 세션 체크
		String countcheck = (String) session.getAttribute("firstCount");
		// 세션이 없을 때
		if (countcheck == null) {
			// 카운터를 1 늘려주고 세션을 생성해준다.
			System.out.println("firstCount Session = null >>>> " + countcheck);
			session.setAttribute("firstCount", "아이맘 접속");
			countDao.countUpdate();
			System.out.println("firstCount Session 생성 >>>> " + session.getAttribute("firstCount"));
		}

		// 오늘 방문자수 가져오는 코드
		CountVO todayCount = countDao.todaycount();
		session.setAttribute("todayCount", todayCount.getCounts());

		// 최대 방문자수 가져오는 코드
		CountVO maxCount = countDao.maxcount();
		session.setAttribute("maxCount", maxCount.getCounts());

		// 총 방문자수 가져오는 코드
		CountVO allCount = countDao.allcount();
		session.setAttribute("allCount", allCount.getCounts());

		// QnA 최신 글 3개 뽑아오는 코드
		List<QnAVO> qnaList = qnaDao.newQna();
		m.addAttribute("qnaList", qnaList);

		// 공동구매 최신 글 4개 뽑아오는 코드
		List<GroupPurchaseVO> purchaseList = purchaseDao.purchaseList();
		m.addAttribute("purchaseList", purchaseList);

		// 베스트 레시피 초기
		List<BoardVO> bestRice_r1 = boardDao.bestRice_r1();
		m.addAttribute("bestRice_r1", bestRice_r1);

		// 베스트 레시피 중기
		List<BoardVO> bestRice_r2 = boardDao.bestRice_r2();
		m.addAttribute("bestRice_r2", bestRice_r2);

		// 베스트 레시피 후기
		List<BoardVO> bestRice_r3 = boardDao.bestRice_r3();
		m.addAttribute("bestRice_r3", bestRice_r3);

		// 베스트 레시피 완료기
		List<BoardVO> bestRice_r4 = boardDao.bestRice_r4();
		m.addAttribute("bestRice_r4", bestRice_r4);

		// 전체 회원수
		int allmember = memberDao.allmember();
		session.setAttribute("allmember", allmember);

		// 전체 게시물 수
		int boardcount = countDao.boardcount();
		session.setAttribute("boardcount", boardcount);

		// 게임해요 배너
		List<GameVO> gameban = videoDao.gamebanner();
		m.addAttribute("gamebanner", gameban);

		// 공부해요 배너
		List<StudyVO> studyban = videoDao.studybanner();
		m.addAttribute("studybanner", studyban);

		// 춤을춰요 배너
		List<VideoVO> videoban = videoDao.videobanner();
		m.addAttribute("videobanner", videoban);
		// 공지사항
		List<BoardVO> notice = boardDao.noticeList();
		m.addAttribute("notice", notice);
		return "home.go";
	}

	@RequestMapping("/home.do")
	public String goMain2() {
		return "home/home";
	}

	@RequestMapping("/gojoin.do")
	public String goJoin() {
		return "joinview/join";
	}

	@RequestMapping("/place.do")
	public String callPlace(Model m, @RequestParam("keyword") String keyword) {
		m.addAttribute("keyword", keyword);
		return "map/place";
	}

	@RequestMapping("/map.go")
	public String callMap(Model m, @RequestParam("keyword") String keyword) {
		m.addAttribute("keyword", keyword);
		return "map.go";
	}
	
	

}
