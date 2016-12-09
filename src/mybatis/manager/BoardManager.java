package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.BoardVO;
import member.vo.ReplyVO;


public class BoardManager {
	
	
	
	
	public static List<BoardVO> allBoard(String title ) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			System.out.println("manager : title : "+title);
			List<BoardVO> list=null;
			// 육아꿀팁, 식단, 자랑
			if(title.equals("tip")||title.equals("rice")||title.equals("baby")){
			
				list = session.selectList("board.allBoard", title); 
			//q&a 게시판
			}else if(title.equals("qna_board")){
				list =	session.selectList("board.allQna", title);
			//질병
			}else if(title.equals("kid_sick")){
				list = session.selectList("board.allSick", title);
			}
		   
		   System.out.println(list.size());
		   session.commit();
		   	return list;	
	   }
	
	public static int wirteBoard(BoardVO boardVO){
		int result=0;  // 결과값 확인용
		
		SqlSession session = CommonManager.db().openSession();
		  
		
		
		String cate = boardVO.getB_cate();
		if(cate.equals("tip")||cate.equals("rice")||cate.equals("baby")){
			result=session.insert("board.boardInsert", boardVO);
		}else if(cate.equals("qna_board")){
			
		}else if(cate.equals("kid_sick")){
			
		}
		session.commit();
		return result;
	}
	
	public static BoardVO viewBoard(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		session.update("board.boardCount", boardVO);
		BoardVO vo= session.selectOne("board.boardView", boardVO);
		session.commit();
		return vo;
	}
	
	public static ReplyVO callReply(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		ReplyVO re=session.selectOne("board.", boardVO);
		session.commit();
		return re;
	}
}
