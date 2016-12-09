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
import member.vo.StudyVO;
import member.vo.VideoVO;

public class VideoManager {

	 
	public static int videoInput(VideoVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = CommonManager.db().openSession();
		   result = session.insert("admin.videoInput", vo);
		   session.commit();
		   	return result;	// insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص� ����
	   }
	

	public static int studyInput(StudyVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = CommonManager.db().openSession();
		   result = session.insert("admin.studyInput", vo);
		   session.commit();
		   	return result;	// insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص� ����
	   }
	
//	public static List<GameVO> gameBoard() throws SQLException
//	   {
//			SqlSession session = CommonManager.db().openSession();
//			List<GameVO> list=null;
//			
//				list = session.selectList("admin.gameAll");
//				System.out.println(list.size());
//		   
//		   session.commit();
//		   	return list;	
//	   }
//	
//
//	
//	public static GameVO gameView(GameVO vo) throws SQLException
//	   {
//			SqlSession session = CommonManager.db().openSession();
//			GameVO vlist=null;
//			
//				vlist = session.selectOne("admin.gameAll", vo);
//				System.out.println(vlist);
//		   
//		   session.commit();
//		   	return vlist;	
//	   }


}
