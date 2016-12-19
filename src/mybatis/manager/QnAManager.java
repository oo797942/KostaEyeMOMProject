package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.BoardVO;
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
		   FaqVO vlist = session.selectOne("qna.selectFaq",vo);
		   session.commit();
		   return vlist;
	}
	   public static int totalCount(FaqVO faqVO) throws SQLException {
		      SqlSession session = CommonManager.db().openSession();
		      int totalCount = session.selectOne("qna.totalCount", faqVO);

		      session.commit();
		      return totalCount;
		   }
	   // 공지사항 리스트 뽑아오기
	   public static List<FaqVO> allpagingFaq(FaqVO faqvo) throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      List<FaqVO> list = session.selectList("qna.allFaqp", faqvo);

	      session.commit();
	      return list;
	   }
}
