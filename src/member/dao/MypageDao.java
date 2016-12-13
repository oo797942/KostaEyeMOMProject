package member.dao;

import java.util.List;

import member.vo.MemberVO;

public interface MypageDao {
	MemberVO userInfo(MemberVO vo) ;
	List getMyBoard(MemberVO vo);
	List getMyReply(MemberVO vo);
	List getMyBoardList(MemberVO vo);
}
