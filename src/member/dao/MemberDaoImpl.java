package member.dao;

import java.util.List;

import member.vo.MemberVO;
import member.vo.QnAVO;
import mybatis.manager.checkManager;
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
	public List<MemberVO> idCheck(MemberVO vo) {
		List<MemberVO> mem=null; 
		try{ 
			mem = checkManager.idCheck(vo);
		}catch( Exception ex )
		{
			System.out.println("loginDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return mem;
	}

	@Override
	public List<MemberVO> nickCheck(MemberVO vo) {
		List<MemberVO> mem=null; 
		try{ 
			System.out.println("멤버다오임플"+vo.getU_nick());
			mem = checkManager.nickCheck(vo);
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
	
	public int allmember(){
		int result=0;
		try{ 
			result = MemberManager.allmember();
		}catch( Exception ex )
		{
			System.out.println("loginDAOImpl / 멤버 수 가져오기 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override 
	public int memberUpdate(MemberVO vo) {
		int result=0;
		try{ 
			result = MemberManager.memberUpdate(vo);
		}catch( Exception ex )
		{
			System.out.println("멤버 업데이트 실패 : " + ex.getMessage());
		}
		return 0;
	}
	

	@Override 
	public int memberExile(MemberVO vo) {
		int result=0;
		try{ 
			result = MemberManager.memberExile(vo);
		}catch( Exception ex )
		{
			System.out.println("멤버 업데이트 실패 : " + ex.getMessage());
		}
		return result;
	}
}
