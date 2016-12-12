package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.BoardVO;
import member.vo.ReplyVO;


public class BoardManager {
	
	
	
	// 해당 게시판 게시물들 가져오기
	public static List<BoardVO> allBoard(String title ) throws SQLException
	   {
			SqlSession session = CommonManager.db().openSession();
			System.out.println("manager : title : "+title);
			List<BoardVO> list=null;
			// 육아꿀팁, 식단, 자랑
			if(title.equals("tip")||title.equals("rice")||title.equals("baby")){
			
				list = session.selectList("board.allBoard", title); 
			//q&a 게시판
			}else if(title.equals("qna_board")){
				list =	session.selectList("board.allQna", title);
			//질병
			}else if(title.equals("kid_sick")){
				list = session.selectList("board.allSick", title);
			}
		   
		   System.out.println(list.size());
		   session.commit();
		   	return list;	
	   }
	
	//게시물 등록
	public static int wirteBoard(BoardVO boardVO){
		int result=0;  // 결과값 확인용
		
		SqlSession session = CommonManager.db().openSession();
		  
		
		
		String cate = boardVO.getB_cate();
		if(cate.equals("tip")||cate.equals("rice")||cate.equals("baby")){
			result=session.insert("board.boardInsert", boardVO);
		}else if(cate.equals("qna_board")){
			
		}else if(cate.equals("kid_sick")){
			
		}
		session.commit();
		return result;
	}
	
	//게시판 객체 얻어오기
	public static BoardVO viewBoard(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		session.update("board.boardCount", boardVO);
		BoardVO vo= session.selectOne("board.boardView", boardVO);
		session.commit();
		return vo;
	}
	
	//리플 가져오기
	public static List<ReplyVO> callReply(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		List <ReplyVO> list=session.selectList("board.callreply", boardVO);
		session.commit();
		return list;
	}
	
	//리플 등록
	public static int writeReply(ReplyVO replyVO){
		SqlSession session = CommonManager.db().openSession();
		
		int result = session.insert("board.replInsert",replyVO);
		session.commit();
		return result;
	}
	
	//리플 삭제
	public static int replDelte(ReplyVO replyVO){
		SqlSession session = CommonManager.db().openSession();
		int result=0;
		ReplyVO checkVO = session.selectOne("board.checkReply",replyVO);
		if(checkVO.getRe_id().equals(replyVO.getRe_id())){
			System.out.println("본인!");
			result= session.delete("board.deleteReply",replyVO);	
		}else{
			System.out.println("본인아님");
		}
		session.commit();
		return result;
	}
	
	//게시물 삭제
	public static int deleteBoard(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		int result=0;
		result= session.delete("board.deleteBoard",boardVO);
		session.commit();
		return result;
	}
	
	//게시물 수정
	public static int updateBoard(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		int result=0;
		result= session.update("board.updateBoard",boardVO);
		session.commit();
		return result;
		
	}
	
	//추천인 중복 체크
	public static List<BoardVO> checkGoodId(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		List<BoardVO> list= session.selectList("board.goodCheck", boardVO);

		session.commit();
		return list;
	}
	
	//추천 등록
	public static int countGood(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		int result =session.update("board.countGood", boardVO);
		session.commit();
		return result;
	}
	
	//신고
	public static int reportBoard(BoardVO boardVO){
		SqlSession session = CommonManager.db().openSession();
		int result =session.update("board.reportBoard", boardVO);
		session.commit();
		return result;
		
	}
}
