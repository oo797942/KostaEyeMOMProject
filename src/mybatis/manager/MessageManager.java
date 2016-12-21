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
		session.update("user.addMessage",vo);
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
	
	public static MessageVO messageView(MessageVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		MessageVO vList=null;
		String state = vo.getS_state();
		if(state.equals("n")){
			System.out.println("이게뭔소리요"+vo.getS_send_id());
			session.update("user.readMessage",vo);
		}
		session.update("msg.messageCount", vo);
		session.commit();
		
		vList= session.selectOne("msg.messageView", vo);
		return vList; 
	}
	
	
	public static int deleteAll(MessageVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.delete("msg.deleteAll", vo);
		String state = vo.getS_state();
		if(state.equals("n")){
			session.update("user.readMessage",vo);
		}
		session.commit();
		return result; 
	}
	
	public static int readAll(MessageVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		String state = vo.getS_state();
		if(state.equals("n")){
			session.update("user.readMessage",vo);
		}
		result = session.update("msg.readAll", vo);
		session.commit();
		return result; 
	}
}
