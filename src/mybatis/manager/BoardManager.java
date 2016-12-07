package mybatis.manager;

import java.sql.SQLException;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.BoardVO;


public class BoardManager {
	public static List<BoardVO> allBoard(String title ) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			System.out.println("manager : title : "+title);
			List<BoardVO> list=null;
			if(title.equals("tip")||title.equals("rice")||title.equals("baby")){
			
				list = session.selectList("board.allBoard", title); 
			
			}else if(title.equals("qna_board")){
				list =	session.selectList("board.allQna", title);
			}else if(title.equals("kid_sick")){
				list = session.selectList("board.allSick", title);
			}
		   
		   System.out.println(list.size());
		   session.commit();
		   	return list;	
	   }
}
