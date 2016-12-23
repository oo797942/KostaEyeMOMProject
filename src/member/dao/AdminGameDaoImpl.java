package member.dao;

import java.util.List;

import member.vo.GameVO;
import mybatis.manager.GameManager;
import mybatis.manager.GroupPurchaseManager;

public class AdminGameDaoImpl implements AdminGameDao {
 //** 게임, 영상 관련 Dao 입니다**
	
	
	
	//관리자 게임입력 실행
	@Override
	public int adminGameInput(GameVO vo) {
		int result = 0;
		try{
			//게임입력후 결과를 받음
			result = GameManager.gameInput(vo);
		}catch( Exception ex )
		{
			System.out.println("adminGameInput 실패 : " + ex.getMessage());
		}
		return result;
	
	}
	
//페이징을 위한 DB의 게임 갯수 가져오기
	@Override
	public int gameListCount() {
		int totalCount = 0;
		try {
			totalCount = GameManager.totalCount();
		} catch (Exception ex) {
			System.out.println("gameListCount 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}
	
	
	
//	플레시게임 목록 가져오기
	@Override
	public List<GameVO> GameBoard(GameVO vo) {
			List<GameVO> list=null;
			try{
				list = GameManager.gameBoard(vo);
			}catch( Exception ex )
			{
				System.out.println("GameBoard 실패 : " + ex.getMessage());
			}
			return list;
	}
	
	
	//플레시게임 뷰(게임 실행)페이지값 가져오기
	@Override
	public GameVO GameView(GameVO vo) {
			GameVO vlist=null;
			try{
				vlist = GameManager.gameView(vo);
			}catch( Exception ex )
			{
				System.out.println("GameView 실패 : " + ex.getMessage());
			}				
			return vlist;
	}


	//관리자에서 플레시게임 삭제 실행
	@Override
	public int adminGameDelete(GameVO vo) {
		int result = 0;
		try{
			result = GameManager.gameDelete(vo);
		}catch( Exception ex )
		{
			System.out.println("adminGameDelete 실패 : " + ex.getMessage());
		}
		return result;
	
	}


//	관리자에서 플레시게임 수정 실행
	@Override
	public int adminGameUpdate(GameVO vo) {
		int result = 0;
		try{
			result = GameManager.gameUpdate(vo);
		}catch( Exception ex )
		{
			System.out.println("adminGameUpdate 실패 : " + ex.getMessage());
		}
		return result;
	}


	//게임 추천을 위한 추천자 리스트 가져오기
	@Override
	public List<GameVO> GameRecom(GameVO vo) {
		List<GameVO> list=null;
		try{
			list = GameManager.gameRecom(vo);
		}catch( Exception ex )
		{
			System.out.println("GameRecom 실패 : " + ex.getMessage());
		}
		return list;
	}


//	게임 추천실행
	@Override
	public int GameRecomDoing(GameVO vo) {
		int result = 0;
		try{
			result = GameManager.gameRecomDoing(vo);
		}catch( Exception ex )
		{
			System.out.println("GameRecomDoing 실패 : " + ex.getMessage());
		}
		return result;
	}


	
}
