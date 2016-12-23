package member.dao;

import java.util.List;

import member.vo.GameVO;

public interface AdminGameDao {
	
//	관리자에서 게임 입력
	int adminGameInput(GameVO vo);
//게임실행창을 띄우기 위한 값 가져오기
	GameVO GameView(GameVO vo);
//	관리자에서 게임 삭제
	int adminGameDelete(GameVO vo);
//	관리자에서 게임 수정
	int adminGameUpdate(GameVO vo);
//게임 추천을 위한 추천인 리스트 가져오기
	List<GameVO> GameRecom(GameVO vo);
//	게임 추천 실행
	int GameRecomDoing(GameVO vo);
//	페이징처리된 게임 리스트 가져오기
	List<GameVO> GameBoard(GameVO vo);
//	페이징을 위한 총 게임 갯수 가져오기
	int gameListCount();
}
