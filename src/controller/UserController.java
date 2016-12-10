package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.dao.GroupPurchaseDaoImpl;
import member.dao.QnADaoImpl;
import member.vo.GroupPurchaseVO;
import member.vo.QnAVO;

@Controller
public class UserController {
	

	@Autowired
	private QnADaoImpl qnaDao;
	@Autowired
	private GroupPurchaseDaoImpl purchaseDao;

	@RequestMapping("/home.go")
	public String goMain(Model m){

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
	 
	@RequestMapping("/home.do")
	public String goMain2(){
		return "home/home";
	}
	
	@RequestMapping("/gojoin.do")
	public String goJoin(){
		return "joinview/join";
	}
	
	
	@RequestMapping("/place.do")
	public String callPlace(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("keyword", keyword );
		return "map/place";
	}
	
	@RequestMapping("/map.go")
	public String callMap(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("keyword", keyword );
		return "map.go";
	}
	

	
}
