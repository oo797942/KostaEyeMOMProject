package member.dao;

import member.vo.MemberVO;


public class LoginDaoImpl implements LoginDao {

	@Override
	public MemberVO idCheck(MemberVO vo) {
		MemberVO memberVo = null;
		try{
//			memberVo = MemberManager.idCheck_Login(vo);
		}catch( Exception ex )
		{
			System.out.println("MemberDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return memberVo;
	
	}

}
