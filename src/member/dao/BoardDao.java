package member.dao;

import java.util.List;

import member.vo.BoardVO;

public interface BoardDao {
	List<BoardVO> allBoard(String title);
	int writeBoard(BoardVO vo);
	BoardVO viewBoard(BoardVO vo);
}
