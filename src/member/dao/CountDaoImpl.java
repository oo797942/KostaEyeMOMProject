package member.dao;

import member.vo.CountVO;
import mybatis.manager.CountManager;

public class CountDaoImpl implements CountDao {
	
	// 방문자수를 늘려주는 메소즈
	public void countUpdate() {
		try{
			CountManager.countUpdate();
			System.out.println("CountUpdate 성공");
		}catch(Exception e){
			System.out.println("CountDaoImpl / countUpdate 실패: " + e.getMessage());
		}
	}

	// 오늘 방문자수를 가져오는 메소드
	public CountVO todaycount() {
		CountVO vo = null;
		try{
			vo = CountManager.todaycount();
			System.out.println("todaycount 성공");
		}catch(Exception e){
			System.out.println("CountDaoImpl / todaycount 실패: " + e.getMessage());
		}
		return vo;
	}

	// 최대 방문자수를 가져오는 메소드
	public CountVO maxcount() {
		
		CountVO vo = null;
		try{
			vo = CountManager.maxcount();
			System.out.println("maxcount 성공");
		}catch(Exception e){
			System.out.println("CountDaoImpl / maxcount 실패: " + e.getMessage());
		}
		return vo;
	}

	// 총 방문자수를 가져오는 메소드
	public CountVO allcount() {
		CountVO vo = null;
		try{
			vo = CountManager.allcount();
			System.out.println("allcount 성공");
		}catch(Exception e){
			System.out.println("CountDaoImpl / allcount 실패: " + e.getMessage());
		}
		return vo;
	}
	
//	// main QnA 리스트 출력
//	@Override
//	public List<QnAVO> newQna() {
//		List<QnAVO> list=null; 
//		try{ 
//			list = QnAManager.mainQnaList();
//		}catch( Exception ex )
//		{
//			System.out.println("QnADaoImpl / mainQnaList 실패 : " + ex.getMessage());
//		}
//		return list;
//	}
}
