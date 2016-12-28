package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.MemberVO;
import member.vo.QnAVO;

public class MypageManager {
	// 유저 정보가져오기
	public static MemberVO userInfo(MemberVO memberVO) throws SQLException{
		MemberVO vo= null;
		
		SqlSession session = CommonManager.db().openSession();
		vo= session.selectOne("mypage.userInfo", memberVO);
		
		session.close();
		return vo;
		
	}
	//내가쓴글 최근 4개 가져오기
	public static List getMyBoard(MemberVO memberVO) throws SQLException{
		List list= null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getboard", memberVO);
		session.close();
		return list;
	}
	//내가 쓴 댓글 최근 4개
	public static List getMyReply(MemberVO memberVO) throws SQLException{
		List list= null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getReply", memberVO);
		session.close();
		return list;
	}
	//내가 쓴글 전체보기 리스트
	public static List getMyBoardList(MemberVO memberVO) throws SQLException{
		List list =null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getMyBoardList", memberVO);
		session.close();
		return list;
	}
	//내가 쓴 댓글 전체보기 리스트
	public static List getReplyList(MemberVO memberVO) throws SQLException{
		List list =null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getReplyList", memberVO);
		session.close();
		return list;
	}
	
	
	//내가 쓴 qna 최근 4개
	public static List getMyQna(MemberVO memberVO) throws SQLException{
		List list =null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getMyQna", memberVO);
		session.close();
		return list;
	}
	//내가 쓴 qna 전체보기
	public static List getQnaList(MemberVO memberVO) throws SQLException{
		List list =null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getMyQnaList", memberVO);
		session.close();
		return list;
	}
	//내가 주문한 최근 4개 가져오기
	public static List getMyPayment(MemberVO memberVO) throws SQLException{
		List list =null;
		SqlSession session = CommonManager.db().openSession();
		list = session.selectList("mypage.getMyPayment", memberVO);
		session.close();
		return list;
	}
	//내 공동구매 내역보기
	public static List getMyPaymentList(MemberVO memberVO) throws SQLException{
		List list =null;
		SqlSession session = CommonManager.db().openSession();
		System.out.println("매니저 id"+memberVO.getU_id());
		list = session.selectList("mypage.getMyPaymentList", memberVO);
		session.close();
		return list;
	}
	
	public static int totalCountShopping(MemberVO memberVO) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("mypage.shoppingTotalCount", memberVO);

	      session.commit();
	      return totalCount;
	}
	//내가 쓴 qna 게시물 총갯수를 구한다
	public static int totalCountQna(MemberVO memberVO) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("mypage.qnaTotalCount", memberVO);

	      session.commit();
	      return totalCount;
	}
	//내가 쓴글 전체보기 게시물 카운트
	public static int totalCountBoard(MemberVO memberVO) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("mypage.boardTotalCount", memberVO);

	      session.commit();
	      return totalCount;
	}
	//내가 쓴 댓글 게시물 총갯수를 구한다
	public static int totalCountReply(MemberVO memberVO) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("mypage.replyTotalCount", memberVO);

	      session.commit();
	      return totalCount;
	}
}
