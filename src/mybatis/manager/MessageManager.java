package mybatis.manager;

import java.sql.SQLException;

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
	
}
