package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.MessageDaoImpl;
import member.vo.BoardVO;
import member.vo.MemberVO;
import member.vo.MessageVO;

@Controller
public class MessageController {

	@Autowired
	private MessageDaoImpl messageDao;
	
	@RequestMapping("messageWriter.go")
	public String messageWriter(BoardVO VO, Model m, HttpSession session ){
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		m.addAttribute("user",memvo);
		m.addAttribute("vo",VO);
		return "messageWriter";
	}
	
	@RequestMapping("messageSending.go")
	public String messageSending(MessageVO messageVO){
		
		messageDao.messageSending(messageVO);
		
		return "popupClose";
	}
	
	@RequestMapping("/messageBoard.do")
	public String messageBoard(MessageVO messageVO, HttpSession session, Model m){
		MemberVO memvo = (MemberVO) session.getAttribute("user");
		System.out.println(memvo.getU_id());
		messageVO.setS_send_id(memvo.getU_id());
		messageVO.setS_id(memvo.getU_id());

		List<MessageVO> sendList = messageDao.sendMessageList(messageVO);		
		List<MessageVO> receiveList = messageDao.receiveMessageList(messageVO);
		
		m.addAttribute("sendList", sendList);
		m.addAttribute("receiveList", receiveList);

		return "message/messageBoard";
	}
	
}
