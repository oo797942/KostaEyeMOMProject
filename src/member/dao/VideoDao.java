package member.dao;

import member.vo.StudyVO;
import member.vo.VideoVO;

public interface VideoDao {
	int adminVideoInput(VideoVO vo);
	int adminStudyInput(StudyVO vo);
	
}
