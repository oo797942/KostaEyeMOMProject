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
	
	public static List<GameVO> gameBoard() throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			List<GameVO> list=null;
			
				list = session.selectList("admin.gameAll");
				System.out.println(list.size());
		   
		   session.commit();
		   	return list;	
	   }
}
