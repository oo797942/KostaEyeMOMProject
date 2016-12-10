package member.dao;

import java.util.List;

import member.vo.StudyVO;
import member.vo.VideoVO;

public interface VideoDao {
	int adminVideoInput(VideoVO vo);
	int adminStudyInput(StudyVO vo);
	List<VideoVO> videoBoard();
	VideoVO videoBoardView(VideoVO vo);
	List<StudyVO> studyBoard();
	StudyVO studyBoardView(StudyVO vo);
}
