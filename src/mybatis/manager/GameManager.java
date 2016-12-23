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

	 
	public static int gameInput(GameVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = CommonManager.db().openSession();
		   result = session.insert("admin.gameInput", vo);
		   session.commit();
		   	return result;	// insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص� ����
	   }
	
	public static int totalCount() throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("admin.gameTotalCount");

	      session.commit();
	      return totalCount;
	   }
	
	public static List<GameVO> gameBoard(GameVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<GameVO> list=null;
			
				list = session.selectList("admin.gameAllp",vo);
				System.out.println(list.size());
		   
		   session.commit();
		   	return list;	
	   }
	

	
	public static GameVO gameView(GameVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			GameVO vlist=null;
			
			session.update("admin.gameCount", vo);
				vlist = session.selectOne("admin.gameAll", vo);
				System.out.println(vlist);
		   
		   session.commit();
		   	return vlist;	
	   }

	
	public static int gameDelete(GameVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = CommonManager.db().openSession();
		   result = session.delete("admin.gameDelete", vo);
		   session.commit();
		   	return result;	
		   	
	   }
	
	public static int gameUpdate(GameVO vo ) throws SQLException
	   {
			int result = 0;		
		   SqlSession session = CommonManager.db().openSession();
		   result = session.update("admin.gameUpdate", vo);
		   session.commit();
		   	return result;		   
	   }
	
	public static List<GameVO> gameRecom(GameVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<GameVO> list=null;
			
				list = session.selectList("admin.gameRecom", vo);
				System.out.println(list.size());
		   
		   session.commit();
		   	return list;	
	   }
	
	public static int gameRecomDoing(GameVO vo ) throws SQLException
	   {
			int result = 0;		
		   SqlSession session = CommonManager.db().openSession();
		   result = session.update("admin.gameRecomDoing", vo);
		   session.commit();
		   	return result;		   
	   }
	
	
}
