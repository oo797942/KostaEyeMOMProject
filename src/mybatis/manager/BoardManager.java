package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.BoardVO;
import member.vo.ReplyVO;

public class BoardManager {

   // 해당 게시판 게시물들 가져오기
   public static List<BoardVO> allBoard(String title) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      System.out.println("manager : title : " + title);
      List list = null;
      // 육아꿀팁, 식단, 자랑
      if (title.equals("tip") || title.equals("rice") || title.equals("baby") || title.equals("notice") || title.equals("donation")) {

         list = session.selectList("board.allBoard", title);

      }
      System.out.println(list.size());
      session.commit();
      return list;
   }

   // 게시물 등록
   public static int wirteBoard(BoardVO boardVO) throws SQLException {
      int result = 0; // 결과값 확인용

      SqlSession session = CommonManager.db().openSession();

      String cate = boardVO.getB_cate();
      if (cate.equals("tip") || cate.equals("rice") || cate.equals("baby") || cate.equals("donation")|| cate.equals("used")) {
    	  session.update("board.pointup",boardVO);
    	  result = session.insert("board.boardInsert", boardVO);
      } else if (cate.equals("qna_board")) {

      } else if (cate.equals("kid_sick")) {

      }
      session.commit();
      return result;
   }

   // 게시판 객체 얻어오기
   public static BoardVO viewBoard(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      session.update("board.boardCount", boardVO);
      BoardVO vo = session.selectOne("board.boardView", boardVO);
      session.commit();
      return vo;
   }

   // 리플 가져오기
   public static List<ReplyVO> callReply(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<ReplyVO> list = session.selectList("board.callreply", boardVO);
      session.commit();
      return list;
   }

   // 리플 등록
   public static int writeReply(ReplyVO replyVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();

      int result = session.insert("board.replInsert", replyVO);
      session.commit();
      return result;
   }

   // 리플 삭제
   public static int replDelte(ReplyVO replyVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int result = 0;
      ReplyVO checkVO = session.selectOne("board.checkReply", replyVO);
      if (checkVO.getRe_id().equals(replyVO.getRe_id())) {
         System.out.println("본인!");
         result = session.delete("board.deleteReply", replyVO);
      } else {
         System.out.println("본인아님");
      }
      session.commit();
      return result;
   }

   // 게시물 삭제
   public static int deleteBoard(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int result = 0;
      result = session.delete("board.deleteBoard", boardVO);
      session.commit();
      return result;
   }

   // 게시물 수정
   public static int updateBoard(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int result = 0;
      result = session.update("board.updateBoard", boardVO);
      session.commit();
      return result;
   }

   // 추천인 중복 체크
   public static List<BoardVO> checkGoodId(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.goodCheck", boardVO);

      session.commit();
      return list;
   }

   // 추천 등록
   public static int countGood(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int result = session.update("board.countGood", boardVO);
      session.update("board.pointup", boardVO);// 추천인 포인트업
      session.update("board.pointup", boardVO);
      session.commit();
      return result;
   }

   // 신고
   public static int reportBoard(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int result = session.update("board.reportBoard", boardVO);
      session.commit();
      return result;

   }

   // 베스트 레시피 초기 가져오기
   public static List<BoardVO> bestRice_r1() throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.bestr1");

      session.commit();
      return list;
   }
   

   // 베스트 레시피 중기 가져오기
   public static List<BoardVO> bestRice_r2() throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.bestr2");

      session.commit();
      return list;
   }
   

   // 베스트 레시피 후기 가져오기
   public static List<BoardVO> bestRice_r3() throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.bestr3");

      session.commit();
      return list;
   }
   

   // 베스트 레시피 완료기 가져오기
   public static List<BoardVO> bestRice_r4() throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.bestr4");

      session.commit();
      return list;
   }
   
   // 공지사항 리스트 뽑아오기
   public static List<BoardVO> noticeList() throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.notice");

      session.commit();
      return list;
   }
   
   // 게시물 수정
   public static int donationfin(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int result = 0;
      result = session.update("board.donationfin", boardVO);
      session.commit();
      return result;
   }

   
   // 공지사항 리스트 뽑아오기
   public static int totalCount(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int totalCount = session.selectOne("board.totalCount", boardVO);

      session.commit();
      return totalCount;
   }
   
   // 공지사항 리스트 뽑아오기
   public static List<BoardVO> allpagingBoard(BoardVO boardvo) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.allBoardp", boardvo);

      session.commit();
      return list;
   }

   
   // 공지사항 리스트 뽑아오기
   public static int admintotalCount() throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int totalCount = session.selectOne("board.adminTotalCount");

      session.commit();
      return totalCount;
   }
   
   // 공지사항 리스트 뽑아오기
   public static List<BoardVO> adminPagingBoard(BoardVO boardvo) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.adminBoardp", boardvo);

      session.commit();
      return list;
   }
   // 리플 등록
   public static int adminBoardInsert(BoardVO vo) throws SQLException {
      SqlSession session = CommonManager.db().openSession();

      int result = session.insert("board.adminBoardInsert", vo);
      session.commit();
      return result;
   }

   // 수정 등록
   public static BoardVO adminBoardUpdate(BoardVO vo) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      
      BoardVO result = session.selectOne("board.boardView", vo);
      session.commit();
      return result;
   }
   
   // 리플 등록
   public static int adminBoardUpdateDoing(BoardVO vo) throws SQLException {
      SqlSession session = CommonManager.db().openSession();

      int result = session.update("board.adminBoardUpdate", vo);
      session.commit();
      return result;
   }
   
   // 공지사항 리스트 뽑아오기
   public static int reportTotalCount(BoardVO boardVO) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      int totalCount = session.selectOne("board.reportTotalCount", boardVO);

      session.commit();
      return totalCount;
   }
   
   // 공지사항 리스트 뽑아오기
   public static List<BoardVO> reportPagingBoard(BoardVO boardvo) throws SQLException {
      SqlSession session = CommonManager.db().openSession();
      List<BoardVO> list = session.selectList("board.reportBoardp", boardvo);

      session.commit();
      return list;
   }
}