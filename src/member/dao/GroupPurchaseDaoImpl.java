package member.dao;

import java.util.List;

import member.vo.BoardVO;
import member.vo.GroupPurchaseVO;
import member.vo.PaymentVO;
import mybatis.manager.BoardManager;
import mybatis.manager.GroupPurchaseManager;

public class GroupPurchaseDaoImpl implements GroupPurchaseDao{
	// 메인 공동구매 리스트 출력
	@Override
	public List<GroupPurchaseVO> purchaseList() {
		List<GroupPurchaseVO> list=null; 
		try{ 
			list = GroupPurchaseManager.mainGroupPurchaseList();
		}catch( Exception ex )
		{
			System.out.println("GroupPurchaseDaoImpl / purchaseList 실패 : " + ex.getMessage());
		}
		return list;
	}

	@Override
	public int shoppingListCount() {
		int totalCount = 0;
		try {
			totalCount = GroupPurchaseManager.totalCount();
		} catch (Exception ex) {
			System.out.println("gpDAOImpl / 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}

	@Override
	public List<GroupPurchaseVO> allPagingShopping(GroupPurchaseVO vo) {
		List<GroupPurchaseVO> list = null;
		try {
			

			list = GroupPurchaseManager.allpagingShopping(vo);
		} catch (Exception ex) {
			System.out.println("gpDAO페징 : " + ex.getMessage());
		}
		return list;
	}

	@Override
	public GroupPurchaseVO getItem(GroupPurchaseVO vo) {
		GroupPurchaseVO gpVO=null;
		try {
			

			gpVO = GroupPurchaseManager.getItem(vo);
		} catch (Exception ex) {
			System.out.println("gpDAO페징 : " + ex.getMessage());
		}
		return gpVO;
	}

	@Override
	public int orderShop(PaymentVO vo) {
		int result=0;
		try {

			result = GroupPurchaseManager.orderShop(vo);
		} catch (Exception ex) {
			System.out.println("gpDAO페징 : " + ex.getMessage());
		}
		return result;
	}
	
	
}
