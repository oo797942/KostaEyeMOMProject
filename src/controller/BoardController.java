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
		
		list =boardDao.allBoard(title);  //게시판별 모든 리스트를 가져오기위해 
		
		System.out.println(list);
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		m.addAttribute("title", title ); // 게시판 종류 모델에 저장
		return "board/board";
	}
	
	//글쓰기 이동
	@RequestMapping("/boardInsert.do")
	public String writeBoard(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("title", keyword ); // 게시판 종류 모델에 저장
		System.out.println("게시팔:" +keyword);
		return "board/boardInesert";
	} 
	
}
 