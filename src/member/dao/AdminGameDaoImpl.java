package member.dao;

import java.util.List;

import member.vo.GameVO;
import mybatis.manager.GameManager;

public class AdminGameDaoImpl implements AdminGameDao {
 
	@Override
	public int adminGameInput(GameVO vo) {
		int result = 0;
		try{
			result = GameManager.gameInput(vo);
			System.out.println("겜등록 성공 :"+result); 
		}catch( Exception ex )
		{
			System.out.println("게임 등록 실패 : " + ex.getMessage());
		}
		return result;
	
	}
	
	
	@Override
	public List<GameVO> GameBoard() {
			List<GameVO> list=null;
			try{
				list = GameManager.gameBoard();
			}catch( Exception ex )
			{
				System.out.println("게임목록들고오기 실패 : " + ex.getMessage());
			}finally{
				return list;
			}
	}
	
	@Override
	public GameVO GameView(GameVO vo) {
			GameVO vlist=null;
			try{
				vlist = GameManager.gameView(vo);
			}catch( Exception ex )
			{
				System.out.println("게임목록들고오기 실패 : " + ex.getMessage());
			}finally{
				return vlist;
			}
	}


	@Override
	public int adminGameDelete(GameVO vo) {
		int result = 0;
		try{
			result = GameManager.gameDelete(vo);
			System.out.println("겜삭제 성공 :"+result); 
		}catch( Exception ex )
		{
			System.out.println("게임 삭제 실패 : " + ex.getMessage());
		}
		return result;
	
	}


	@Override
	public int adminGameUpdate(GameVO vo) {
		int result = 0;
		try{
			result = GameManager.gameUpdate(vo);
			System.out.println("겜수정 성공 :"+result); 
		}catch( Exception ex )
		{
			System.out.println("게임 수정 실패 : " + ex.getMessage());
		}
		return result;
	}
	
}
