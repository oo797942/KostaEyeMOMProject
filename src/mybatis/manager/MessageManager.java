package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.MessageVO;

public class MessageManager {

	public static int messageSending(MessageVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.insert("msg.messageSending", vo);
		session.commit();
		return result; 
	}
	
	public static List<MessageVO> sendMessageList(MessageVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		List<MessageVO> sendList =null;
		sendList= session.selectList("msg.sendMessageList", vo);
		session.commit();
		return sendList; 
	}

	public static List<MessageVO> receiveMessageList(MessageVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		List<MessageVO> receiveList=null;
		receiveList= session.selectList("msg.receiveMessageList", vo);
		session.commit();
		return receiveList; 
	}
	
}
