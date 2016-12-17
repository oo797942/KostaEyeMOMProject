package member.dao;

import member.vo.MemberVO;

public interface LoginDao {
	MemberVO memberLogin(MemberVO vo);
	int androidLoginCheck(MemberVO vo);
	int memberLoginRecord(MemberVO vo);
}
