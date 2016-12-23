package member.dao;

import java.util.List;

import member.vo.MemberVO;
import member.vo.QnAVO;

public interface MemberDao {
//	회원가입 실행
	int memberJoin(MemberVO vo);
//	회원 정보 수정 실행
	int memberUpdate(MemberVO vo);
//	회원 ID값으로 정보 체크
	List<MemberVO> idCheck(MemberVO vo); 
//	회원 목록 가져오기
	List<MemberVO> memberList();
//	회원 NICK값으로 정보체크
	List<MemberVO> nickCheck(MemberVO vo);
//	활동중인 회원 수 가져오기
	int allmember();
//	회원 정지 실행
	int memberExile(MemberVO vo);
	
}
 