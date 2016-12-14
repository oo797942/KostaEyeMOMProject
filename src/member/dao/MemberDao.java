package member.dao;

import java.util.List;

import member.vo.MemberVO;

public interface MemberDao {
	int memberJoin(MemberVO vo);
	int memberUpdate(MemberVO vo);
	List<MemberVO> idCheck(MemberVO vo); 
	List<MemberVO> memberList();
	List<MemberVO> nickCheck(MemberVO vo);
	int allmember();
	
}
 