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

//	회원가입 실행
	public static int userJoin(MemberVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.insert("user.userInsert", vo);
		session.commit();
		return result; 
	}

//	회원 목록 가져오기
	public static List<MemberVO> memberList() throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<MemberVO> list = null;
		list = session.selectList("admin.memberAll");
		return list;
	}

//	활동중인 회원수 가져오기
	public static int allmember() throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.selectOne("user.allmember");
		session.commit();
		return result;
	}
	
//	회원 정보수정 실행
	public static int memberUpdate(MemberVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("user.memberUpdate", vo);
		session.commit();
		return result;
	}
	
//	회원 활동정지실행
	public static int memberExile(MemberVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("user.memberExile", vo);
		session.commit();
		return result;
	}
	
}
