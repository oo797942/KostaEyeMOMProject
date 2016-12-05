package member.dao;

import member.vo.MemberVO;
import mybatis.manager.LoginManager;


public class LoginDaoImpl implements LoginDao {

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		MemberVO memberVo = null;
		try{
			memberVo = LoginManager.userLogin(vo);
			System.out.println("logincontorller :"+memberVo.getU_id()); 
		}catch( Exception ex )
		{
			System.out.println("loginDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return memberVo;
	
	}

}
