package mybatis.manager;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import member.vo.GroupPurchaseVO;
import member.vo.PaymentVO;

public class GroupPurchaseManager {

	// 메인 공동구매 리스트 출력
	public static List<GroupPurchaseVO> mainGroupPurchaseList() throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   List<GroupPurchaseVO> list = session.selectList("purchase.mainpurchase"); 
		   System.out.println("purchase 몇 개? : "+ list.size());
		   return list;
	   }
	//공동구매 게시물 페이징
	public static List<GroupPurchaseVO> allpagingShopping(GroupPurchaseVO vo) throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      List<GroupPurchaseVO> list = session.selectList("purchase.allBoardp", vo);

	      session.commit();
	      return list;
	   }
	//공동구매 게시물 총갯수를 구한다
	public static int totalCount() throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("purchase.totalCount");

	      session.commit();
	      return totalCount;
	   }
	//공동구매  리스트 게시물 클릭시 해당게시물 정보가져오기	
	public static GroupPurchaseVO getItem(GroupPurchaseVO vo){
		SqlSession session = CommonManager.db().openSession();
		GroupPurchaseVO gpVO = session.selectOne("purchase.getItem", vo);

	      session.commit();
	      return gpVO;
	}
	
	public static int orderShop(PaymentVO vo){
		SqlSession session = CommonManager.db().openSession();
	      int result = session.insert("purchase.orderShop",vo);

	      session.commit();
	      return result;
	}
	
//	공동구매 입력
	public static int purchaseInsert(GroupPurchaseVO vo){
		SqlSession session = CommonManager.db().openSession();
		int gpVO = session.insert("purchase.insertPurchase", vo);

	      session.commit();
	      return gpVO;
	}
	
//	공동구매 입력
	public static int purchaseUpdate(GroupPurchaseVO vo){
		SqlSession session = CommonManager.db().openSession();
		int gpVO = session.insert("purchase.updatePurchase", vo);

	      session.commit();
	      return gpVO;
	}
	
//	공동구매 입력
	public static int purchaseDelete(GroupPurchaseVO vo){
		SqlSession session = CommonManager.db().openSession();
		int gpVO = session.insert("purchase.deletePurchase", vo);

	      session.commit();
	      return gpVO;
	}
}
