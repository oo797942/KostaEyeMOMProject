package member.dao;

import java.sql.SQLException;
import java.util.List;

import member.vo.MessageVO;
import mybatis.manager.MessageManager;

public class MessageDaoImpl implements MessageDao {

//	메세지 보내기
	@Override
	public int messageSending(MessageVO vo) {
		int result = 0;
		try {
			result = MessageManager.messageSending(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

//	보낸 메세지 리스트 가져오기
	@Override
	public List<MessageVO> sendMessageList(MessageVO vo){
		List<MessageVO> sendList = null;
		try {
			sendList= MessageManager.sendMessageList(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return sendList;
	}
	
//	받은 메세지 리스트 가져오기
	@Override
	public List<MessageVO> receiveMessageList(MessageVO vo){
		List<MessageVO> receiveList = null;
		try {
			receiveList = MessageManager.receiveMessageList(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return receiveList;
	}
	
//	메세지 뷰를 띄우기 위한 값 가져오기
	@Override
	public MessageVO messageView(MessageVO vo){
		MessageVO vList = null;
		try {
			vList = MessageManager.messageView(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	return vList;
	}	
	
//	메세지 삭제 실행
	@Override
	public int deleteAll(MessageVO vo) {
		int result = 0;
		try {
			result = MessageManager.deleteAll(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	메세지 읽음으로 바꾸기
	@Override
	public int readAll(MessageVO vo) {
		int result = 0;
		try {
			result = MessageManager.readAll(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
