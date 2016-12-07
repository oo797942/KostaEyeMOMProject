package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.vo.GameVO;
import member.vo.MemberVO;

public class GameManager {
private static SqlSessionFactory sqlMapper;
	
	static{
		String resource = "mybatis/mapper/SqlMapConfig.xml";
		try{
		
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch( IOException ex)
		{
			System.out.println("GameManager fail : " + ex.getMessage());
		}
	}
	 
	public static int gameInput(GameVO vo ) throws SQLException
	   {
			int result = 0;
		   SqlSession session = sqlMapper.openSession();
		   result = session.insert("admin.gameInput", vo);
		   session.commit();
		   	return result;	// insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص� ����
	   }
}
