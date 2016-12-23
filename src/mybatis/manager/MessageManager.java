package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.MessageVO;

public class MessageManager {
//사용자 메세지관련 매니저
	
	
//	메세지 전송 실행
	public static int messageSending(MessageVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.insert("msg.messageSending", vo);
//		사용자에 신규메세지 카운터에 알림 추가
		session.update("user.addMessage",vo);
		session.commit();
		return result; 
	}
	
//	보낸 메세지 리스트 가져오기
	public static List<MessageVO> sendMessageList(MessageVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		List<MessageVO> sendList =null;
		sendList= session.selectList("msg.sendMessageList", vo);
		session.commit();
		return sendList; 
	}

//	받은 메세지 리스트 가져오기
	public static List<MessageVO> receiveMessageList(MessageVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		List<MessageVO> receiveList=null;
		receiveList= session.selectList("msg.receiveMessageList", vo);
		session.commit();
		return receiveList; 
	}
	
//	메세지 뷰(메세지 보기)를 위한 정보 가져오기
	public static MessageVO messageView(MessageVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		MessageVO vList=null;
		String state = vo.getS_state();
		if(state.equals("n")){
//			사용자에 신규 메세지 알림 카운터에 값 제거
			session.update("user.readMessage",vo);
		}
		session.update("msg.messageCount", vo);
		session.commit();
		vList= session.selectOne("msg.messageView", vo);
		return vList; 
	}
	
//	메세지 삭제 실행
	public static int deleteAll(MessageVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.delete("msg.deleteAll", vo);
		String state = vo.getS_state();
		if(state.equals("n")){
//		사용자에 신규 메세지 알림 카운터에 값 제거
			session.update("user.readMessage",vo);
		}
		session.commit();
		return result; 
	}
	
//	메세지 읽기 실행
	public static int readAll(MessageVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		String state = vo.getS_state();
		if(state.equals("n")){
//			사용자에 신규 메세지 알림 카운터에 값 제거
			session.update("user.readMessage",vo);
		}
		result = session.update("msg.readAll", vo);
		session.commit();
		return result; 
	}
}
