package member.dao;

import java.util.List;

import member.vo.GroupPurchaseVO;
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
}
