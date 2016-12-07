package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.vo.MemberVO;

public class LoginManager {

	
	
	
	public static MemberVO userLogin(MemberVO vo ) throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   MemberVO memberVO = session.selectOne("user.idCheck", vo);
		   System.out.println("manager : "+memberVO.getU_id());
		   session.commit();
		   	return memberVO;	// insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص� ����
	   }
	
}
