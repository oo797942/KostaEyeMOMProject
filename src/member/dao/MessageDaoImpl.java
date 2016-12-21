package member.dao;

import java.sql.SQLException;
import java.util.List;

import member.vo.MessageVO;
import mybatis.manager.MessageManager;

public class MessageDaoImpl implements MessageDao {

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
