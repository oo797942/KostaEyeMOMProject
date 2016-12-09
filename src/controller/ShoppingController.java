package controller;
 
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import member.dao.BoardDaoImpl;
import member.vo.BoardVO;


@Controller
public class ShoppingController {
	
	@Autowired
	private BoardDaoImpl boardDao;
	
	//공동구매 view로 이동
	@RequestMapping("/shoppingList.do")
	public String shopList(){
		return "shopping/shoppingList";
	}
	
	@RequestMapping("/shoppingView.do")
	public String shopView(){
		System.out.println("/shoppingView.do 요청");
		return "shopping/shoppingView";
	}
	
}
 