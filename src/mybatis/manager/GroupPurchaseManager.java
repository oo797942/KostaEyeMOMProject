package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.GroupPurchaseVO;
import member.vo.QnAVO;

public class GroupPurchaseManager {

	// 메인 공동구매 리스트 출력
	public static List<GroupPurchaseVO> mainGroupPurchaseList() throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   List<GroupPurchaseVO> list = session.selectList("purchase.mainpurchase");
		   System.out.println("purchase 몇 개? : "+ list.size());
		   return list;
	   }
	
	
}
