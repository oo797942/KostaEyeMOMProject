package member.dao;

import member.vo.MemberVO;

public interface LoginDao {
	MemberVO  idCheck( MemberVO vo );
}
