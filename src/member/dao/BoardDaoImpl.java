package member.dao;

import java.util.List;

import member.vo.BoardVO;
import member.vo.ReplyVO;
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
		}
			return list;
		
		
	}

	@Override
	public int writeBoard(BoardVO vo) {
		int result=0;
		try{
			result = BoardManager.wirteBoard(vo);
		}catch( Exception ex )
		{
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public BoardVO viewBoard(BoardVO vo) {
		BoardVO bvo=null;
		try{
			bvo = BoardManager.viewBoard(vo);
		}catch( Exception ex )
		{
			System.out.println("boardDAOImpl / vo가져오기 실패 : " + ex.getMessage());
		}
		return bvo;
	}
	
	@Override
	public List<ReplyVO> callReply(BoardVO vo){
		List<ReplyVO> list=null;
		try{
			list = BoardManager.callReply(vo);
		}catch( Exception ex )
		{
			System.out.println("boardDAOImpl / vo가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}
	
	@Override
	public int writeReply(ReplyVO vo){
		int  result = 0;
		try{
			result = BoardManager.writeReply(vo);
		}catch( Exception ex )
		{
			System.out.println("boardDAOImpl / vo가져오기 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public int replDelte(ReplyVO vo) {
		int  result = 0;
		try{
			result = BoardManager.replDelte(vo);
		}catch( Exception ex )
		{
			System.out.println("boardDAOImpl / 리플 지우기 실패 : " + ex.getMessage());
		}
		return result;
	}
}
