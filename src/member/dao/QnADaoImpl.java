package member.dao;

import java.util.ArrayList;

import member.vo.MemberVO;
import member.vo.QnAVO;
import mybatis.manager.IdcheckManager;
import mybatis.manager.LoginManager;
import mybatis.manager.MemberJoinManager;
import mybatis.manager.QnAManager;


public class QnADaoImpl implements QnADao {
	
	@Override
	public ArrayList<QnAVO> newQna() {
		ArrayList<QnAVO> list=null; 
		try{ 
			list = QnAManager.mainQnaList();
		}catch( Exception ex )
		{
			System.out.println("QnADaoImpl / mainQnaList 실패 : " + ex.getMessage());
		}
		return list;
	}
	
}
