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
	
}
