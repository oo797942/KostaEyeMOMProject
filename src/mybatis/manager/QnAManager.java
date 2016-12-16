package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
}
