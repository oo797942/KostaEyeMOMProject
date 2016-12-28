package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.AnswerVO;
import member.vo.AreplyVO;
import member.vo.FaqVO;
import member.vo.QnAVO;

public class QnAManager {

	// main QnA 리스트 출력
	public static List<QnAVO> mainQnaList() throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   List<QnAVO> list = session.selectList("qna.mainQna");
		   System.out.println("qnaList 몇 개? : "+ list.size());
		   session.commit();
		   return list;
	   }
	
	public static List<QnAVO> allQna() throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		   List<QnAVO> list = session.selectList("qna.allQna");
		   System.out.println("qnaList 몇 개? : "+ list.size());
		   session.commit();
		   return list;
	}
	
	public static int writeFaq(FaqVO faqVO) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		System.out.println("m"+faqVO.getQ_content());
		System.out.println("m"+faqVO.getQ_title());
		System.out.println("m"+faqVO.getU_id());
		
		   int result = session.insert("qna.writeFaq", faqVO);
		   session.commit();
		   return result;
	}
	
	public static List<FaqVO> allFaq() throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		   List<FaqVO> list = session.selectList("qna.allFaq");
		   session.commit();
		   return list;
	}
	
	
	public static FaqVO selectFaq(FaqVO vo) throws SQLException{
		SqlSession session = CommonManager.db().openSession();
		   FaqVO vlist = session.selectOne("qna.allFaq",vo);
		   session.commit();
		   return vlist;
	}
	   public static int totalCount(FaqVO faqVO) throws SQLException {
		      SqlSession session = CommonManager.db().openSession();
		      int totalCount = session.selectOne("qna.totalCount", faqVO);

		      session.commit();
		      return totalCount;
	   }
	   
	   public static int totalCount() throws SQLException {
		      SqlSession session = CommonManager.db().openSession();
		      int totalCount = session.selectOne("qna.totalCount2");

		      session.commit();
		      return totalCount;
	   }
	   
	   public static List<QnAVO> allpagingQna(QnAVO qnaVO) throws SQLException {
		      SqlSession session = CommonManager.db().openSession();
		      List<QnAVO> list = session.selectList("qna.allQnap", qnaVO);

		      session.commit();
		      return list;
		   }
	   
	   // 공지사항 리스트 뽑아오기
	   public static List<FaqVO> allpagingFaq(FaqVO faqvo) throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      List<FaqVO> list = session.selectList("qna.allFaqp", faqvo);

	      session.commit();
	      return list;
	   }
	   
		public static int faqAnswerDoing(FaqVO faqVO) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			   int result = session.update("qna.faqAnswer", faqVO);
			   session.commit();
			   return result;
		}
	   
		public static int insertQna(QnAVO qnaVO) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			   int result = session.insert("qna.insertQna", qnaVO);
			   session.commit();
			   return result;
		}
		// 조회수 카운트
		public static int count(QnAVO qnaVO) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			   int result = session.update("qna.count", qnaVO);
			   session.commit();
			   return result;
		}
		//qna 게시물 데이터 가져오기
		public static QnAVO callQna(QnAVO qnaVO) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			QnAVO qVO = session.selectOne("qna.callQna", qnaVO);
			session.commit();
			return qVO;
		}
		
		public static int insertAnswer(AnswerVO aVO) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			int result = session.insert("qna.insertAnswer", aVO);
			session.update("qna.updateAnswer", aVO);
			session.commit();
			return result;
		}
		
		public static List<AnswerVO> callAnswer(QnAVO vo) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			List <AnswerVO> list = session.selectList("qna.callAnswer", vo);
			session.commit();
			return	list;
		}
		
		public static int insertReply(AreplyVO vo) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			int result = session.insert("qna.insertReply", vo);
			session.commit();
			return result;
		}
		
		public static List<AreplyVO> callReply(AnswerVO vo) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			List <AreplyVO> list = session.selectList("qna.callReply", vo);
			session.commit();
			return	list;
		}
		
		public static int deleteAnswerReply(AreplyVO vo) throws SQLException{
			SqlSession session = CommonManager.db().openSession();
			
			int result = session.delete("qna.deleteAnswerReply", vo);
			session.commit();
			return result;
		}
}
