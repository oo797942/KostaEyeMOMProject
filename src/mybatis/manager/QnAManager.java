package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.QnAVO;

public class QnAManager {

	// main QnA 리스트 출력
	public static List<QnAVO> mainQnaList() throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   List<QnAVO> list = session.selectList("qna.mainQna");
		   System.out.println("qnaList 몇 개? : "+ list.size());
		   return list;
	   }
	
	
}
