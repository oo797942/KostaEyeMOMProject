package member.dao;

import member.vo.MemberVO;

public interface MemberDao {
	int memberJoin(MemberVO vo);
	MemberVO idCheck(MemberVO vo); 
}
 