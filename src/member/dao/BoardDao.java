package member.dao;

import java.util.List;

import member.vo.BoardVO;
import member.vo.MemberVO;
import member.vo.ReplyVO;

public interface BoardDao {
	List allBoard(String title);
	int writeBoard(BoardVO vo);
	BoardVO viewBoard(BoardVO vo);
	List<ReplyVO> callReply(BoardVO vo);
	int writeReply(ReplyVO vo);
	int replDelte(ReplyVO vo);
	int deleteBoard(BoardVO vo);
	int updateBoard(BoardVO vo);
	List<BoardVO> checkGoodId(BoardVO vo);
	int countGood(BoardVO vo);
	int reportBoard(BoardVO vo);
	List<BoardVO> bestRice_r1();
	List<BoardVO> bestRice_r2();
	List<BoardVO> bestRice_r3();
	List<BoardVO> bestRice_r4();
	List<BoardVO> noticeList();
}
