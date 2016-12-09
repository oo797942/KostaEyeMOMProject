package member.dao;

import member.vo.StudyVO;
import member.vo.VideoVO;
import mybatis.manager.VideoManager;

public class VideoDaoImpl implements VideoDao {

	@Override
	public int adminVideoInput(VideoVO vo) {
		int result = 0;
		try{
			result = VideoManager.videoInput(vo);
			System.out.println("겜등록 성공 :"+result); 
		}catch( Exception ex )
		{
			System.out.println("게임 등록 실패 : " + ex.getMessage());
		}
		return result;	
	}

	@Override
	public int adminStudyInput(StudyVO vo) {
		int result = 0;
		try{
			result = VideoManager.studyInput(vo);
			System.out.println("겜등록 성공 :"+result); 
		}catch( Exception ex )
		{
			System.out.println("게임 등록 실패 : " + ex.getMessage());
		}
		return result;	
	}

}
