package member.dao;

import java.sql.SQLException;

import member.vo.MemberVO;
import mybatis.manager.LoginManager;

public class LoginDaoImpl implements LoginDao {
	@Override
	public MemberVO memberLogin(MemberVO vo) {
		MemberVO memberVo = null;
		try {
			memberVo = LoginManager.userLogin(vo);
			System.out.println("loginDaoImpl 성공 :" + memberVo.getU_id());
		} catch (Exception ex) {
			System.out.println("loginDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return memberVo;

	}

	public int androidLoginCheck(MemberVO vo) {
		int result = 0;
		try {
			result = LoginManager.androidLoginCheck(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
