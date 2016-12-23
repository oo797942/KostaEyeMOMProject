package member.dao;

import java.util.List;

import member.vo.MessageVO;

public interface MessageDao {
//	메세지 보내기 실행
	int messageSending(MessageVO vo);
//받은 메세지 리스트
	List<MessageVO> receiveMessageList(MessageVO vo);
//보낸 메세지 리스트
	List<MessageVO> sendMessageList(MessageVO vo);
//메세지 뷰
	MessageVO messageView(MessageVO vo);
//메세지 삭제 실행
	int deleteAll(MessageVO vo);
//메세지 읽기 실행
	int readAll(MessageVO vo);
}
