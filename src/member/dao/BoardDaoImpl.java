package member.dao;

import java.util.ArrayList;
import java.util.List;

import member.vo.BoardVO;
import mybatis.manager.BoardManager;

public class BoardDaoImpl implements BoardDao {

	@Override  // 보드 리스트
	public List<BoardVO> allBoard(String title) {
		List<BoardVO> list=null;
		try{
			list = BoardManager.allBoard(title);
		}catch( Exception ex )
		{
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}finally{
			return list;
		}
		
	}

	@Override
	public int writeBoard(BoardVO vo) {
		int result=0;
		return result;
	}

	@Override
	public BoardVO viewBoard(BoardVO vo) {
		BoardVO bvo=null;
		return bvo;
	}

}
