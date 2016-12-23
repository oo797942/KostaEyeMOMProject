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
import member.vo.MessageVOList;

@Controller
public class MessageController {

	@Autowired
	private MessageDaoImpl messageDao;
	
	//메세지 보내기 창 띠우기 위한 정보 가져오기
	@RequestMapping("messageWriter.go")
	public String messageWriter(BoardVO VO, Model m, HttpSession session ){
//		세션에서 사용자정보 가져오기
		MemberVO memvo = (MemberVO) session.getAttribute("user");
//		세션에서 가져온 현재 사용자 정보 모델에 저장
		m.addAttribute("user",memvo);
//		게시판에서 가져온 메세지 받는사람 정보 모델에 저장
		m.addAttribute("vo",VO);

		return "messageWriter";
	}
	
//	메세지 보내기
	@RequestMapping("messageSending.go")
	public String messageSending(MessageVO messageVO){
//		텍스트 에리어에서의 띄어쓰기처리
		messageVO.setS_content(messageVO.getS_content().replaceAll("\r\n","<br>"));
		messageDao.messageSending(messageVO);
		return "popupClose";
	}
	
//	메세지리스트 가져오기
	@RequestMapping("/messageBoard.do")
	public String messageBoard(MessageVO messageVO, HttpSession session, Model m){
//		세션에서 사용자 정보 가져오기
		MemberVO memvo = (MemberVO) session.getAttribute("user");
//		보낸 사람 ID에 현재 사용자 ID 저장
		messageVO.setS_id(memvo.getU_id());
//		받는 사람 ID에 현재 사용자 ID 저장
		messageVO.setS_send_id(memvo.getU_id());

//		보낸 메세지 리스트 가져오기
		List<MessageVO> sendList = messageDao.sendMessageList(messageVO);		
//		받는 메세지 리스트 가져오기
		List<MessageVO> receiveList = messageDao.receiveMessageList(messageVO);
		
		m.addAttribute("sendList", sendList);
		m.addAttribute("receiveList", receiveList);

		return "message/messageBoard";
	}

//	메세지 뷰(메세지 내용) 정보 가져오기
	@RequestMapping("messageView.go")
	public String messageView(MessageVO messageVO, Model m, HttpSession session){		
		MessageVO msgVO = null;
//		세션에서 사용자 정보 가져오기
		MemberVO memvo = (MemberVO) session.getAttribute("user");
//		보낸 사람 ID에 현재 사용자 ID 저장
		messageVO.setS_id(memvo.getU_id());
//		리스트에서 가져온 메세지 번호와 세션에서 가져온 사용자 아이디로 해당 메세지 값 가져오기
		msgVO = messageDao.messageView(messageVO);
		m.addAttribute("vlist",msgVO);
		return "messageView";
	}
	
//	메세지 삭제 실행
	@RequestMapping("deleteAll.go")
	public String deleteAll(MessageVOList messageVO, Model m, HttpSession session){		
		MessageVO msgVO = new MessageVO();
//		체크박스로 선택된 메세지들을 리스트 형태로 가져와서 그 리스트의 사이즈만큼 반복문을 실행한다.
		for(int i = 1; i<messageVO.getList().size(); i++ ){
//			객체 생성한 msgVO에 메세지 번호, 메세지 상태, 메세지 받는 사람 아이디를 저장후 deleteAll함수로 보낸다.
		msgVO.setS_no(messageVO.getList().get(i).getS_no());
		msgVO.setS_state(messageVO.getList().get(i).getS_state());
		msgVO.setS_send_id(messageVO.getList().get(i).getS_send_id());
		messageDao.deleteAll(msgVO);
		}
		return "redirect:messageBoard.do";
	}	
	
//	메세지를 읽음 상태로 바꾼다
	@RequestMapping("readAll.go")
	public String readAll(MessageVOList messageVO, Model m, HttpSession session){		
		MessageVO msgVO = new MessageVO();
//		체크박스로 선택된 메세지들을 리스트 형태로 가져와서 그 리스트의 사이즈만큼 반복문을 실행한다.
		for(int i = 1; i<messageVO.getList().size(); i++ ){
//			객체 생성한 msgVO에 메세지 번호, 메세지 상태, 메세지 받는 사람 아이디를 저장후 readAll함수로 보낸다.
		msgVO.setS_no(messageVO.getList().get(i).getS_no());
		msgVO.setS_state(messageVO.getList().get(i).getS_state());
		messageDao.readAll(msgVO);
		}
		return "redirect:messageBoard.do";
	}	
}
