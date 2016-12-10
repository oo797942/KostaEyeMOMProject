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
	
	public static List<VideoVO> videoBoard() throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<VideoVO> list=null;
			
				list = session.selectList("admin.videoAll");
				System.out.println(list.size());
		   

		   	return list;	
	   }
	
	
	public static VideoVO videoView(VideoVO vo) throws SQLException
	   {
		   System.out.println("VideoManager . viewView :" + vo.getD_no());
			SqlSession session = CommonManager.db().openSession();
			VideoVO vlist= session.selectOne("admin.videoAll", vo);
			System.out.println(">"+vlist.getD_no());

		   	return vlist;	
	   }

	public static List<StudyVO> studyBoard() throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<StudyVO> list=null;
			
				list = session.selectList("admin.studyAll");
				System.out.println(list.size());
		   

		   	return list;	
	   }
	
	
	public static StudyVO studyView(StudyVO vo) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			StudyVO vlist= session.selectOne("admin.studyAll", vo);

		   	return vlist;	
	   }

}
