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
public class BoardController {
	
	@Autowired
	private BoardDaoImpl boardDao;
	
	//보드리스트 이동
	@RequestMapping(value = "{title}", method = RequestMethod.GET)
	public String callBoard(Model m,@PathVariable("title") String title){
		List<BoardVO> list=null;
		
			 
			list =boardDao.allBoard(title);
		
		
		System.out.println(list);
		m.addAttribute("list", list);
		m.addAttribute("title", title );
		return "board/board";
	}
	
	//글쓰기 이동
	@RequestMapping("/boardInsert.do")
	public String writeBoard(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("keyword", keyword );
		System.out.println(keyword);
		return "board/boardInesert";
	} 
	  
}
 