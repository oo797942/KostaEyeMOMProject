package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.vo.MemberVO;

public class IdcheckManager {
private static SqlSessionFactory sqlMapper;
	
	static{
		String resource = "mybatis/mapper/SqlMapConfig.xml";
		try{
		
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch( IOException ex)
		{
			System.out.println("MemberManager fail : " + ex.getMessage());
		}
	}
	
	
	
	public static MemberVO idCheck(MemberVO vo ) throws SQLException
	   {
		   SqlSession session = sqlMapper.openSession();
		   MemberVO memberVO = session.selectOne("user.idCheck", vo);
		   System.out.println("manager : "+memberVO.getU_id());
		   session.commit();
		   	return memberVO;	// insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص� ����
	   }
	
}
