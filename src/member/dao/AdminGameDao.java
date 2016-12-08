package member.dao;

import java.util.List;

import member.vo.GameVO;

public interface AdminGameDao {
	List<GameVO> GameBoard();
	int adminGameInput(GameVO vo);

}
