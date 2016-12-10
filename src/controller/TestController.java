package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.CountDaoImpl;
import member.dao.GroupPurchaseDao;
import member.dao.GroupPurchaseDaoImpl;
import member.dao.QnADaoImpl;
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
		
		
		
		
		
		session.setAttribute("firstCount", "넌 이미 카운터 했다 바보야!");
		
		

		// QnA 최신 글 3개 뽑아오는 코드
		List<QnAVO> qnaList = qnaDao.newQna();
		System.out.println("qnaList 3개 들어왔냐아아아: " + qnaList.size());
		m.addAttribute("qnaList", qnaList);

		// 공동구매 최신 글 4개 뽑아오는 코드
		List<GroupPurchaseVO> purchaseList = purchaseDao.purchaseList();
		System.out.println("purchaseList 4개 들어왔냐아아아: " + purchaseList.size());
		m.addAttribute("purchaseList", purchaseList);
		return "home.go";
		
		
		
	}

}
