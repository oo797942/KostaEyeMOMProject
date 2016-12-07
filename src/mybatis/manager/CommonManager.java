package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommonManager {
	
	private static SqlSessionFactory sqlMapper;
	
	public static SqlSessionFactory db(){
		String resource = "mybatis/mapper/SqlMapConfig.xml";
		try{
		
			Reader reader = Resources.getResourceAsReader(resource);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
			
		}catch( IOException ex)
		{
			System.out.println("MemberManager fail : " + ex.getMessage());
		}
		return sqlMapper;
	}
}
