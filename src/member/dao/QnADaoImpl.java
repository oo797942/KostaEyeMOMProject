package member.dao;

import java.util.List;

import member.vo.QnAVO;
import mybatis.manager.QnAManager;


public class QnADaoImpl implements QnADao {
	
	
	// main QnA 리스트 출력
	@Override
	public List<QnAVO> newQna() {
		List<QnAVO> list=null; 
		try{ 
			list = QnAManager.mainQnaList();
		}catch( Exception ex )
		{
			System.out.println("QnADaoImpl / mainQnaList 실패 : " + ex.getMessage());
		}
		return list;
	}
	
}
