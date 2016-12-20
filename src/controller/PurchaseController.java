package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PurchaseController {

	@RequestMapping("purchaseView.do")
	public String purchaseView(){
		return "purchase/purchaseView";
	}
}
