package controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.dao.BoardDaoImpl;
import member.vo.BoardVO;


@Controller
public class BoardController {
	
	@Autowired
	private BoardDaoImpl boardDao;
	
	@RequestMapping(value = "{title}", method = RequestMethod.GET)
	public String callBoard(Model m,@PathVariable("title") String title){
		List<BoardVO> list=null;
		if(title.equals("tip")||title.equals("rice")||title.equals("baby")){
			
			list =boardDao.allBoard(title);
		}else if(title.equals("qna_board")){
			
		}else if(title.equals("kid_sick")){
			
		}
		
		
		System.out.println(list);
		m.addAttribute("list", list);
		m.addAttribute("title", title );
		return "board/board";
	}
	  
}
 