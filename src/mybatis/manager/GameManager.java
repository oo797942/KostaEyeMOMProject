package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.vo.BoardVO;
import member.vo.GameVO;
import member.vo.MemberVO;

public class GameManager {

	 
	//게임 입력 실행
	public static int gameInput(GameVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = CommonManager.db().openSession();
		   result = session.insert("admin.gameInput", vo);
		   session.commit();
		   	return result;
	   }
	
//	페이징을 위한 총 게임 갯수 가져오기
	public static int totalCount() throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("admin.gameTotalCount");
	      session.commit();
	      return totalCount;
	   }
	
//	페이징처리가 된 게임 리스트 가져오기
	public static List<GameVO> gameBoard(GameVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<GameVO> list=null;
				list = session.selectList("admin.gameAllp",vo);
		   session.commit();
		   	return list;	
	   }
	
//게임 뷰(게임실행 화면)을 띄우기 위해 해당 값 가져오기
	public static GameVO gameView(GameVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			GameVO vlist=null;
			//게임 조회수 1증가
			session.update("admin.gameCount", vo);
				vlist = session.selectOne("admin.gameAll", vo);		   
		   session.commit();
		   	return vlist;	
	   }


//	게임 삭제 실행
	public static int gameDelete(GameVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = CommonManager.db().openSession();
		   result = session.delete("admin.gameDelete", vo);
		   session.commit();
		   	return result;	
		   	
	   }
	
//	게임 수정 실행
	public static int gameUpdate(GameVO vo ) throws SQLException
	   {
			int result = 0;		
		   SqlSession session = CommonManager.db().openSession();
		   result = session.update("admin.gameUpdate", vo);
		   session.commit();
		   	return result;		   
	   }
	
//	게임 추천을 위한 추천자 리스트 가져오기
	public static List<GameVO> gameRecom(GameVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<GameVO> list=null;
				list = session.selectList("admin.gameRecom", vo);
		   session.commit();
		   	return list;	
	   }

//	게임 추천실행
	public static int gameRecomDoing(GameVO vo ) throws SQLException
	   {
			int result = 0;		
		   SqlSession session = CommonManager.db().openSession();
		   result = session.update("admin.gameRecomDoing", vo);
		   session.commit();
		   	return result;		   
	   }
	
	
}
