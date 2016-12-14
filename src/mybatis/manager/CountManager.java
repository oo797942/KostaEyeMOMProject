package mybatis.manager;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import member.vo.CountVO;

public class CountManager {

	public static void countUpdate() throws SQLException{
		  SqlSession session = CommonManager.db().openSession();
		  int result = session.update("count.countupdate");
		  session.commit();
		  System.out.println(result + "개 수정됨");
	}
	
	public static CountVO todaycount() throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		CountVO vo = session.selectOne("count.todaycount");
		return vo;
	}
	
	public static CountVO maxcount() throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		CountVO vo = session.selectOne("count.maxcount");
		return vo;
	}
	
	public static CountVO allcount() throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		CountVO vo = session.selectOne("count.allcount");
		return vo;
	}
	

	public static int boardcount() throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		int result = session.selectOne("count.boardcount");
		return result;
	}
	
}
