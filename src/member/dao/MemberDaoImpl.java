package member.dao;

import java.util.List;

import member.vo.MemberVO;
import mybatis.manager.IdcheckManager;
import mybatis.manager.LoginManager;
import mybatis.manager.MemberManager;


public class MemberDaoImpl implements MemberDao {
	 
	@Override
	public int memberJoin(MemberVO vo) {

		int result = 0;

		try{
			result = MemberManager.userJoin(vo);
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

	@Override
	public List<MemberVO> memberList() {
		List<MemberVO> mem=null; 
		try{ 
			mem = MemberManager.memberList();
		}catch( Exception ex )
		{
			System.out.println("loginDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return mem;
	}
	
}
