package member.dao;

import java.util.List;

import member.vo.GameVO;
import member.vo.StudyVO;
import member.vo.VideoVO;

public interface VideoDao {
//	관리자에서 춤을 춰요 입력
	int adminVideoInput(VideoVO vo);
//	관리자에서 공부해요 입력
	int adminStudyInput(StudyVO vo);
//	춤을 춰요 리스트 가져오기
	List<VideoVO> videoBoard();
//	춤을 춰요 뷰 가져오기
	VideoVO videoBoardView(VideoVO vo);
//	공부 해요 뷰 가져오기
	StudyVO studyBoardView(StudyVO vo);
//	관리자에서 춤을 춰요 삭제
	int adminVideoDelete(VideoVO vo);
//	관리자에서 공부 해요 삭제
	int adminStudyDelete(StudyVO vo);
//	관리자에서 춤을 춰요 수정
	int adminVideoUpdate(VideoVO vo);
//	관리자에서 공부 해요 수정
	int adminStudyUpdate(StudyVO vo);
//	춤을 춰요 추천을 위한 추천인 리스트 가져오기
	List<VideoVO> VideoRecom(VideoVO vo);
//	춤을 춰요 추천 실행
	int VideoRecomDoing(VideoVO vo);
//	공부 해요 추천을 위한 추천인 리스트를 가져오기
	List<StudyVO> StudyRecom(StudyVO vo);
//	공부 해요 추천 실행
	int StudyRecomDoing(StudyVO vo);
//	춤을춰요 배너
	List<VideoVO> videobanner();
//	공부해요 배너
	List<StudyVO> studybanner();
//	놀아 봐요 배너
	List<GameVO> gamebanner();
//	페이징 처리된 공부해요 리스트 가져오기
	List<StudyVO> studyBoard(StudyVO vo);
//	공부해요리스트 가져오기
	List<StudyVO> studyBoardAndroid();
//	페이징 처리된 춤을춰요 리스트 가져오기
	List<VideoVO> videoBoardp(VideoVO vo);
//	공부해요 리스트 가져오기
	List<StudyVO> studyBoardn();
//	페이징 하기위한 춤을 춰요 총 갯수 가져오기
	int videoListCount(VideoVO vo);
//	페이징 하기위한 공부 해요 총 갯수 가져오기
	int studyListCount(StudyVO vo);

}
