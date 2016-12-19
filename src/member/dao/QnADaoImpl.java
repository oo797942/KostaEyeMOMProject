package member.dao;

import java.sql.SQLException;
import java.util.List;

import member.vo.FaqVO;
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
	
	//리스트
	@Override
	public List<QnAVO> allQna() {
		List<QnAVO> list=null;
		try{ 
			list = QnAManager.allQna();
		}catch( Exception ex )
		{
			System.out.println("QnADaoImpl / 리스트가져오기 실패 : " + ex.getMessage());
		}
		
		return list;
	}

	@Override
	public int writeFaq(FaqVO vo) {
		int result=0;
		try{ 
			result = QnAManager.writeFaq(vo);
		}catch( Exception ex )
		{
			System.out.println("QnADaoImpl / 리스트가져오기 실패 : " + ex.getMessage());
		}
		
		return result;
	}
	public List<FaqVO> allFaq(){
		List<FaqVO> list = null;
		try {
			list = QnAManager.allFaq();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return list;
	}
	
	
	@Override
	public FaqVO selectFaq(FaqVO vo) {
		FaqVO vlist = null;
		try{ 
			vlist = QnAManager.selectFaq(vo);
		}catch( Exception ex )
		{
			System.out.println("QnADaoImpl / 리스트가져오기 실패 : " + ex.getMessage());
		}
	return vlist; 
	}
}
