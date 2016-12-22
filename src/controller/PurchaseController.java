package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.dao.GroupPurchaseDaoImpl;
import member.vo.BoardVO;
import member.vo.GroupPurchaseVO;
import member.vo.ReplyVO;

@Controller
public class PurchaseController {
	
	@Autowired
	GroupPurchaseDaoImpl GPDao;
	
	@RequestMapping("purchaseView.do")
	public String purchaseView(){
		return "purchase/purchaseView";
	}
	
	//공동구매 리스트
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
	
	
	@RequestMapping("/shoppingView.do")
	public String shopView(Model m, GroupPurchaseVO gpVO){
		
		System.out.println("/shoppingView.do 요청"+gpVO.getB_no());
		
		GroupPurchaseVO vo = GPDao.getItem(gpVO);
		m.addAttribute("vo", vo);
		return "shoppingView/shoppingView";
	}
	
	@RequestMapping("shoppingpay.do")
	public String payPage(Model m, GroupPurchaseVO gpVO){
		
		
		return "purchase/purchaseView";
	}
}
