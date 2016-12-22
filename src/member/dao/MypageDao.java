package member.dao;

import java.util.List;

import member.vo.MemberVO;
import member.vo.QnAVO;

public interface MypageDao {
	MemberVO userInfo(MemberVO vo) ;
	List getMyBoard(MemberVO vo);
	List getMyReply(MemberVO vo);
	List getMyBoardList(MemberVO vo);
	List getReplyList(MemberVO vo);
	List getMyQna(MemberVO vo);
	List getQnaList(MemberVO vo);
	List getMyPayment(MemberVO vo);
}
