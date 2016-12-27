package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.GroupPurchaseDaoImpl;
import member.vo.GroupPurchaseVO;
import member.vo.MemberVO;
import member.vo.PaymentVO;

@Controller
public class PurchaseController {
	
	@Autowired
	GroupPurchaseDaoImpl GPDao;
	
	
	
	//공동구매 리스트 불러오기
	@RequestMapping("shopping.do")
	public String callGallery(Model m, GroupPurchaseVO gpVO){
		
	    //--페이징 처리
	    int totalCount = GPDao.shoppingListCount(); //게시물 총갯수를 구한다
	    gpVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
	    gpVO.setPageSize(12);
	    m.addAttribute("pageVO", gpVO);

	    //--페이징 처리
	    
	    List<GroupPurchaseVO>  gpList = GPDao.allPagingShopping(gpVO);

		m.addAttribute("list", gpList); //가져온 DB를 모델에 저장
		
		
		return "shopping/shoppingList";
	}
	
	//공동구매 게시글 보기
	@RequestMapping("/shoppingView.do")
	public String shopView(Model m, GroupPurchaseVO gpVO){
		
		System.out.println("/shoppingView.do 요청"+gpVO.getB_no());
		
		GroupPurchaseVO vo = GPDao.getItem(gpVO);
		m.addAttribute("vo", vo);
		return "shoppingView/shoppingView";
	}
	
	//주문페이지 이동하기
	@RequestMapping("shoppingpay.do")
	public String payPage(Model m, GroupPurchaseVO gpVO, HttpSession session){
		System.out.println(gpVO.getB_no());
		System.out.println(gpVO.getWe_count());
		GroupPurchaseVO vo = GPDao.getItem(gpVO); //상품 정보가져오기
		vo.setWe_count(gpVO.getWe_count()); 	//주문 상품 개수
		
		MemberVO memberVO =(MemberVO)session.getAttribute("user");
		
		m.addAttribute("vo", vo);
		m.addAttribute("mvo", memberVO);
		return "purchase/purchaseView";
	}
	
	//주문완료
	@RequestMapping("order.do")
	public String orderShop(PaymentVO paymentVO, HttpSession session){
		
		int result=0;
		MemberVO memberVO =(MemberVO)session.getAttribute("user");
		paymentVO.setPr_id(memberVO.getU_id());
		result= GPDao.orderShop(paymentVO);
		
		return "shopping/myshopping";
	}
}
