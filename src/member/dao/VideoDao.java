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
	int adminVideoDelete(VideoVO vo);
	int adminStudyDelete(StudyVO vo);
	int adminVideoUpdate(VideoVO vo);
	int adminStudyUpdate(StudyVO vo);
	List<VideoVO> VideoRecom(VideoVO vo);
	int VideoRecomDoing(VideoVO vo);
	List<StudyVO> StudyRecom(StudyVO vo);
	int StudyRecomDoing(StudyVO vo);
	
}
