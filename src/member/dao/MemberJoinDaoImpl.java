package member.dao;

import member.vo.MemberVO;
import mybatis.manager.LoginManager;
import mybatis.manager.MemberJoinManager;


public class MemberJoinDaoImpl implements MemberJoinDao {
	 
	@Override
	public int memberJoin(MemberVO vo) {
		int result = 0; 
		try{
			result = MemberJoinManager.userJoin(vo);
		}catch( Exception ex )
		{
			System.out.println("loginDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	
	}
	
	
}
