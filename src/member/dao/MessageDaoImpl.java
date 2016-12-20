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
}
