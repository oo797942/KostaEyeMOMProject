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
import member.vo.VideoVO;

public class MemberManager {

	public static int userJoin(MemberVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.insert("user.userInsert", vo);
		session.commit();
		return result; // insert()�� ����Ÿ���� Object�̱⵵ �ϰ� update()�� ����ص�
						// ����
	}

	public static List<MemberVO> memberList() throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<MemberVO> list = null;

		list = session.selectList("admin.memberAll");
		System.out.println(list.size());

		return list;
	}

	public static int allmember() throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.selectOne("user.allmember");
		session.commit();
		return result;
	}
	
	public static int memberUpdate(MemberVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("user.memberUpdate", vo);
		session.commit();
		return result;
	}
}
