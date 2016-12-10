package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.CountDaoImpl;
import member.dao.GroupPurchaseDaoImpl;
import member.dao.QnADaoImpl;
import member.vo.CountVO;
import member.vo.GroupPurchaseVO;
import member.vo.QnAVO;

@Controller
public class TestController {

	@Autowired
	private QnADaoImpl qnaDao;
	@Autowired
	private GroupPurchaseDaoImpl purchaseDao;
	@Autowired
	private CountDaoImpl countDao;

	@RequestMapping("/test.go")
	public String goMain(Model m, HttpSession session) {
		System.out.println("test.go로 간당");
		
		// 방문자수 체크를 위한 세션 체크
		String countcheck = (String)session.getAttribute("firstCount");
		// 세션이 없을 때
		if(countcheck == null){
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
		return "home.go";
		
		
		
	}

}
