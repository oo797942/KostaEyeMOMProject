package member.dao;

import java.util.List;

import member.vo.MessageVO;

public interface MessageDao {
	int messageSending(MessageVO vo);

	List<MessageVO> receiveMessageList(MessageVO vo);

	List<MessageVO> sendMessageList(MessageVO vo);

	MessageVO messageView(MessageVO vo);

	int deleteAll(MessageVO vo);

	int readAll(MessageVO vo);
}
