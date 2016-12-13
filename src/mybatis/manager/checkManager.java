package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.vo.MemberVO;

public class checkManager {

	
	
	public static List<MemberVO> idCheck(MemberVO vo ) throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   List<MemberVO> memberVO = session.selectList("user.idCheck", vo);
		   session.commit();
		   	return memberVO;
	   }
	
	public static List<MemberVO> nickCheck(MemberVO vo ) throws SQLException
	   {
		   
			SqlSession session = CommonManager.db().openSession();
			System.out.println("체크메니저"+vo.getU_nick());
		   List<MemberVO> memberVO = session.selectList("user.nickCheck", vo);
		   System.out.println("manager : "+memberVO.size());
		   session.commit();
		   
		   	return memberVO;
	   }
	
}
