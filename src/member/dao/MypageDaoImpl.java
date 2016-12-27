package member.dao;

import java.sql.SQLException;
import java.util.List;

import member.vo.MemberVO;
import member.vo.QnAVO;
import mybatis.manager.BoardManager;
import mybatis.manager.MypageManager;

public class MypageDaoImpl implements MypageDao {
	// 유저 정보가져오기
	@Override
	public MemberVO userInfo(MemberVO vo) {
		MemberVO memberVO=null;
		try {
			memberVO = MypageManager.userInfo(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberVO;
	}
	//내가쓴글 최근 4개 가져오기
	@Override
	public List getMyBoard(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyBoard(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	//내가 쓴 댓글 최근 4개
	@Override
	public List getMyReply(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyReply(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	//내가 쓴글 전체보기 리스트
	@Override
	public List getMyBoardList(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyBoardList(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	//내가 쓴 댓글 전체보기 리스트
	@Override
	public List getReplyList(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getReplyList(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	//내가 쓴 qna 최근 4개
	@Override
	public List getMyQna(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyQna(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	//내가 쓴 qna 전체보기
	@Override
	public List getQnaList(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getQnaList(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	//내가 주문한 최근 4개 가져오기
	@Override
	public List getMyPayment(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyPayment(vo);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}
	//내 공동구매 내역보기
	@Override
	public List getMyPaymentList(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyPaymentList(vo);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return list;
	}
	//내 주문내역 게시물 총갯수를 구한다
	@Override
	public int myshoppingListCount(MemberVO vo) {
		int totalCount = 0;
		try {
			totalCount = MypageManager.totalCountShopping(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}
	//내가 쓴 qna 게시물 총갯수를 구한다
	@Override
	public int myQnaListCount(MemberVO vo) {
		int totalCount = 0;
		try {
			totalCount = MypageManager.totalCountQna(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;
	}
	//내가 쓴글 전체보기 게시물 카운트
	@Override
	public int myBoardListCount(MemberVO vo) {
		int totalCount = 0;
		try {
			totalCount = MypageManager.totalCountBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;
	}
	//내가 쓴 댓글 게시물 총갯수를 구한다
	@Override
	public int myReplyListCount(MemberVO vo) {
		int totalCount = 0;
		try {
			totalCount = MypageManager.totalCountReply(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;
	}
	
}
