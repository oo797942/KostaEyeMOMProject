package member.dao;

import java.util.List;

import member.vo.MemberVO;
import member.vo.QnAVO;
import mybatis.manager.checkManager;
import mybatis.manager.LoginManager;
import mybatis.manager.MemberManager;


public class MemberDaoImpl implements MemberDao {
	 
//	회원가입 실행
	@Override
	public int memberJoin(MemberVO vo) {
		int result = 0;
		try{
			result = MemberManager.userJoin(vo);
		}catch( Exception ex )
		{
			System.out.println("MemberDaoImpl 실패 : " + ex.getMessage());
		}
		return result;
	}
	
//	사용자 ID로 정보체크
	@Override
	public List<MemberVO> idCheck(MemberVO vo) {
		List<MemberVO> mem=null; 
		try{ 
			mem = checkManager.idCheck(vo);
		}catch( Exception ex )
		{
			System.out.println("idCheck 실패 : " + ex.getMessage());
		}
		return mem;
	}

//	사용자 NICK으로 정보체크
	@Override
	public List<MemberVO> nickCheck(MemberVO vo) {
		List<MemberVO> mem=null; 
		try{ 
			mem = checkManager.nickCheck(vo);
		}catch( Exception ex )
		{
			System.out.println("nickCheck 실패 : " + ex.getMessage());
		}
		return mem;
	}
	
//	회원 리스트 가져오기
	@Override
	public List<MemberVO> memberList() {
		List<MemberVO> mem=null; 
		try{ 
			mem = MemberManager.memberList();
		}catch( Exception ex )
		{
			System.out.println("memberList 실패 : " + ex.getMessage());
		}
		return mem;
	}
	
//	활동중인 회원수 가져오기
	@Override
	public int allmember(){
		int result=0;
		try{ 
			result = MemberManager.allmember();
		}catch( Exception ex )
		{
			System.out.println("allmember 실패 : " + ex.getMessage());
		}
		return result;
	}

//	회원 정보 수정 실행
	@Override 
	public int memberUpdate(MemberVO vo) {
		int result=0;
		try{ 
			result = MemberManager.memberUpdate(vo);
		}catch( Exception ex )
		{
			System.out.println("memberUpdate 실패 : " + ex.getMessage());
		}
		return 0;
	}
	

//	회원 활동정지 실행
	@Override 
	public int memberExile(MemberVO vo) {
		int result=0;
		try{ 
			result = MemberManager.memberExile(vo);
		}catch( Exception ex )
		{
			System.out.println("memberExile 실패 : " + ex.getMessage());
		}
		return result;
	}
}
