package member.dao;

import java.util.List;

import member.vo.BoardVO;
import member.vo.ReplyVO;

public interface BoardDao {
	List<BoardVO> allBoard(String title);
	int writeBoard(BoardVO vo);
	BoardVO viewBoard(BoardVO vo);
	List<ReplyVO> callReply(BoardVO vo);
	int writeReply(ReplyVO vo);
}
