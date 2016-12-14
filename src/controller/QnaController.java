package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	@RequestMapping("qnaboard.do")
	public String Qnaboard(){
		
		return "qnaboard/qnaboard";
	}
}
