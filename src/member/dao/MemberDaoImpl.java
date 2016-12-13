package member.dao;

import member.vo.MemberVO;
import mybatis.manager.IdcheckManager;
import mybatis.manager.LoginManager;
import mybatis.manager.MemberJoinManager;


public class MemberDaoImpl implements MemberDao {
	 
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
	
	@Override
	public MemberVO idCheck(MemberVO vo) {
		MemberVO mem=null; 
		try{ 
			mem = IdcheckManager.idCheck(vo);
		}catch( Exception ex )
		{
			System.out.println("loginDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return mem;
	}
	
}
