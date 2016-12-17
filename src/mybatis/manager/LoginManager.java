package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.MemberVO;

public class LoginManager {

	public static MemberVO userLogin(MemberVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession(); // sqlmapper
		MemberVO memberVO = session.selectOne("user.idCheck", vo);
		System.out.println("manager : " + memberVO.getU_id());
		session.commit();
		return memberVO;
	}

	public static int androidLoginCheck(MemberVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession(); // sqlmapper
		List<MemberVO> list = session.selectList("user.androidLogin", vo);
		int result = list.size();
		session.commit();
		return result;
	}
	
	public static int memberLoginRecord(MemberVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession(); // sqlmapper
		int result = session.update("user.loginRec", vo);
		session.commit();
		return result;
	}
	
	
}
