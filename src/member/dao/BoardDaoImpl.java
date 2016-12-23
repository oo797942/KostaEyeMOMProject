package member.dao;

import java.util.List;

import member.vo.BoardVO;
import member.vo.ReplyVO;
import mybatis.manager.BoardManager;

public class BoardDaoImpl implements BoardDao {

	@Override // 보드 리스트
	public List allBoard(String title) {
		List<BoardVO> list = null;
		try {
			list = BoardManager.allBoard(title);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return list;
	}
	//게시판 게시글 작성하고 등록 버튼 눌렀을때
	@Override
	public int writeBoard(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.wirteBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
	//게시글 리스트에서 게시글 눌렀을때
	@Override
	public BoardVO viewBoard(BoardVO vo) {
		BoardVO bvo = null;
		try {
			bvo = BoardManager.viewBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / vo가져오기 실패 : " + ex.getMessage());
		}
		return bvo;
	}
	// 해당 게시물 리플 가져오기
	@Override
	public List<ReplyVO> callReply(BoardVO vo) {
		List<ReplyVO> list = null;
		try {
			list = BoardManager.callReply(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / vo가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}
	//게시글 리플 입력했을때
	@Override
	public int writeReply(ReplyVO vo) {
		int result = 0;
		try {
			result = BoardManager.writeReply(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / vo가져오기 실패 : " + ex.getMessage());
		}
		return result;
	}
	//게시글 댓글 삭제버튼 눌렀을 경우
	@Override
	public int replDelte(ReplyVO vo) {
		int result = 0;
		try {
			result = BoardManager.replDelte(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 리플 지우기 실패 : " + ex.getMessage());
		}
		return result;
	}
	//게시물 삭제 버튼 눌렀을 때
	@Override
	public int deleteBoard(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.deleteBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 리플 지우기 실패 : " + ex.getMessage());
		}
		return 0;
	}
	//게시글 수정버튼 눌렀을때
	@Override
	public int updateBoard(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.updateBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 리플 지우기 실패 : " + ex.getMessage());
		}
		return result;
	}
	//게시글 추천 버튼 눌렀을때
	@Override
	public List<BoardVO> checkGoodId(BoardVO vo) {
		List<BoardVO> list = null;
		try {
			System.out.println("DAO 체크" + vo.getB_no());

			list = BoardManager.checkGoodId(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl /추천 실패 : " + ex.getMessage());
		}
		return list;
	}
	// 추천수 카운트
	@Override
	public int countGood(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.countGood(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 추천 등록 실패 : " + ex.getMessage());
			ex.printStackTrace();
		}

		return result;
	}
	/*
	 * 게시글에서 부적한 경우 신고하기 눌렸을 때
	 */
	@Override
	public int reportBoard(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.reportBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 추천 등록 실패 : " + ex.getMessage());
			ex.printStackTrace();
		}

		return result;
	}

	public List<BoardVO> bestRice_r1() {
		List<BoardVO> list = null;
		try {
			list = BoardManager.bestRice_r1();
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 초기 가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}

	public List<BoardVO> bestRice_r2() {
		List<BoardVO> list = null;
		try {
			list = BoardManager.bestRice_r2();
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 중기 가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}

	public List<BoardVO> bestRice_r3() {
		List<BoardVO> list = null;
		try {
			list = BoardManager.bestRice_r3();
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}

	public List<BoardVO> bestRice_r4() {
		List<BoardVO> list = null;
		try {
			list = BoardManager.bestRice_r4();
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 완료기 가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}
	
	public List<BoardVO> noticeList() {
		List<BoardVO> list = null;
		try {
			list = BoardManager.noticeList();
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 공지사항 리스트 가져오기 실패 : " + ex.getMessage());
		}
		return list;
	}
	
	@Override
	public int donationFin(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.donationfin(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 나눔완료 변경 실패 : " + ex.getMessage());
		}
		return result;
	}
	// 게시판 카테고리별 리스트 불러오기
	public int boardListCount(BoardVO boardVO) {

		int totalCount = 0;
		try {
			totalCount = BoardManager.totalCount(boardVO);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}
	// 게시판 리스트 페이징 가져오기
	@Override
	public List<BoardVO> allPagingBoard(BoardVO vo) {
		List<BoardVO> list = null;
		try {
			System.out.println("DAO 체크" + vo.getB_no());

			list = BoardManager.allpagingBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAO페징 : " + ex.getMessage());
		}
		return list;
	}
	

	@Override
	public int adminBoardListCount() {

		int totalCount = 0;
		try {
			totalCount = BoardManager.admintotalCount();
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}

	@Override
	public List<BoardVO> adminPagingBoard(BoardVO vo) {
		List<BoardVO> list = null;
		try {
			System.out.println("DAO 체크" + vo.getB_no());

			list = BoardManager.adminPagingBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAO페징 : " + ex.getMessage());
		}
		return list;
	}
	
	@Override
	public int adminBoardInsert(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.adminBoardInsert(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	@Override
	public BoardVO adminBoardUpdate(BoardVO vo) {
		BoardVO result = null;
		try {
			result = BoardManager.adminBoardUpdate(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	@Override
	public int adminBoardUpdateDoing(BoardVO vo) {
		int result = 0;
		try {
			result = BoardManager.adminBoardUpdateDoing(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	public int reportListCount(BoardVO boardVO) {

		int totalCount = 0;
		try {
			totalCount = BoardManager.reportTotalCount(boardVO);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}

	@Override
	public List<BoardVO> reportPagingBoard(BoardVO vo) {
		List<BoardVO> list = null;
		try {
			System.out.println("DAO 체크" + vo.getB_no());

			list = BoardManager.reportPagingBoard(vo);
		} catch (Exception ex) {
			System.out.println("boardDAO페징 : " + ex.getMessage());
		}
		return list;
	}
}
