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
	//공동구매 게시물 총갯수를 구한다
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
	//공동구매 게시물 페이징
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
	//공동구매  리스트 게시물 클릭시 해당게시물 정보가져오기
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
	//주문완료
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
	
	@Override
	public int adminPurchaseInsertDoing(GroupPurchaseVO vo) {
		int result = 0;
		try {
			result = GroupPurchaseManager.purchaseInsert(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	@Override
	public int adminPurchaseUpdate(GroupPurchaseVO vo) {
		int result = 0;
		try {
			result = GroupPurchaseManager.purchaseUpdate(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
	
	@Override
	public int adminPurchaseDelete(GroupPurchaseVO vo) {
		int result = 0;
		try {
			result = GroupPurchaseManager.purchaseDelete(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / idCheck 실패 : " + ex.getMessage());
		}
		return result;
	}
}
