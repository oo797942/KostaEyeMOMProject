package member.dao;

import java.util.List;

import member.vo.GameVO;

public interface AdminGameDao {
	List<GameVO> GameBoard();
	int adminGameInput(GameVO vo);
	GameVO GameView(GameVO vo);
	int adminGameDelete(GameVO vo);
	int adminGameUpdate(GameVO vo);
	List<GameVO> GameRecom(GameVO vo);
	int GameRecomDoing(GameVO vo);
}
