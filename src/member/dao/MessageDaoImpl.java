package member.dao;

import java.sql.SQLException;

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

}
