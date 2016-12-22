package member.dao;

import java.util.List;

import member.vo.GroupPurchaseVO;
import member.vo.PaymentVO;

public interface GroupPurchaseDao {
	// 메인 공동구매 리스트 출력
	List<GroupPurchaseVO> purchaseList(); 
	int shoppingListCount();
	List<GroupPurchaseVO> allPagingShopping(GroupPurchaseVO vo);
	GroupPurchaseVO getItem(GroupPurchaseVO vo);
	int orderShop(PaymentVO vo);
} 
 