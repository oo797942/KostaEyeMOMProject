package member.dao;

import java.sql.SQLException;
import java.util.List;

import member.vo.BoardVO;
import member.vo.GameVO;
import member.vo.StudyVO;
import member.vo.VideoVO;
import mybatis.manager.BoardManager;
import mybatis.manager.GameManager;
import mybatis.manager.VideoManager;

public class VideoDaoImpl implements VideoDao {

//	관리자에서 춤을춰요 입력
	@Override
	public int adminVideoInput(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoInput(vo);
		} catch (Exception ex) {
			System.out.println("adminVideoInput실패 : " + ex.getMessage());
		}
		return result;
	}

//	관리자에서 공부해요 입력
	@Override
	public int adminStudyInput(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyInput(vo);
		} catch (Exception ex) {
			System.out.println("adminStudyInput 실패 : " + ex.getMessage());
		}
		return result;
	}

//	춤을 춰요 리스트 가져오기
	@Override
	public List<VideoVO> videoBoard() {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videoBoard();
		} catch (Exception ex) {
			System.out.println("videoBoard 실패 : " + ex.getMessage());
		} 
		return list;
		
	}

//	춤을 춰요 창을 띄우기 위한 정보 가져오기
	@Override
	public VideoVO videoBoardView(VideoVO vo) {
		VideoVO vlist = null;
		try {
			vlist = VideoManager.videoView(vo);
		} catch (Exception ex) {
			System.out.println("videoBoardView 실패 : " + ex.getMessage() + ">");
		} 
			return vlist;
	}

//	페이징을 위한 춤을 춰요 총 리스트 갯수 가져오기
	@Override
	public int videoListCount(VideoVO vo) {
		int totalCount = 0;
		try {
			totalCount = VideoManager.videoTotalCount(vo);
		} catch (Exception ex) {
			System.out.println("videoListCount 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}
	
//	페이징된 춤을춰요 리스트 가져오기
	@Override
	public List<VideoVO> videoBoardp(VideoVO vo) {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videoBoardp(vo);
		} catch (Exception ex) {
			System.out.println("videoBoardp 실패 : " + ex.getMessage());
		} 
			return list;
	}
	
//	페이징 하기위한 공부 해요 총 갯수 가져오기
	@Override
	public int studyListCount(StudyVO vo) {
		int totalCount = 0;
		try {
			totalCount = VideoManager.studyTotalCount(vo);
		} catch (Exception ex) {
			System.out.println("studyListCount 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}
	
//	페이징 처리된 공부해요 리스트 가져오기
	@Override
	public List<StudyVO> studyBoard(StudyVO vo) {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyBoard(vo);
		} catch (Exception ex) {
			System.out.println("studyBoard 실패 : " + ex.getMessage());
		} 
		return list;
	}
	
//	공부해요 리스트 가져오기
	@Override
	public List<StudyVO> studyBoardn() {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyBoardn();
		} catch (Exception ex) {
			System.out.println("studyBoardn 실패 : " + ex.getMessage());
		}
		return list;
	}
	
//	공부해요 리스트 가져오기
	@Override
	public List<StudyVO> studyBoardAndroid() {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyBoardAndroid();
		} catch (Exception ex) {
			System.out.println("studyBoardAndroid 실패 : " + ex.getMessage());
		}
		return list;
	}
	
	
//공부해요 뷰를 띄우기 위한 정보 가져오기
	@Override
	public StudyVO studyBoardView(StudyVO vo) {
		StudyVO vlist = null;
		try {
			vlist = VideoManager.studyView(vo);
		} catch (Exception ex) {
			System.out.println("studyBoardView 실패 : " + ex.getMessage() + ">");
		}
		return vlist;
	}

//	관리자에서 춤을 춰요 삭제 실행
	@Override
	public int adminVideoDelete(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoDelete(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

//	관리자에서 공부해요 삭제 실행
	@Override
	public int adminStudyDelete(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyDelete(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

//	관리자에서 춤을 춰요 수정 실행
	@Override
	public int adminVideoUpdate(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoUpdate(vo);
		} catch (Exception ex) {
			System.out.println("adminVideoUpdate 실패 : " + ex.getMessage());
		}
		return result;
	}

//	관리자에서 공부해요 수정 실행
	@Override
	public int adminStudyUpdate(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyUpdate(vo);
		} catch (Exception ex) {
			System.out.println("adminStudyUpdate 실패 : " + ex.getMessage());
		}
		return result;
	}

//	춤을 춰요 추천을 위한 추천인 리스트 가져오기
	@Override
	public List<VideoVO> VideoRecom(VideoVO vo) {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videoRecom(vo);
		} catch (Exception ex) {
			System.out.println("VideoRecom 실패 : " + ex.getMessage());
		}
		return list;
	}

//	춤을 춰요 추천 실행
	@Override
	public int VideoRecomDoing(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoRecomDoing(vo);
		} catch (Exception ex) {
			System.out.println("VideoRecomDoing 실패 : " + ex.getMessage());
		}
		return result;
	}

//	공부해요 추천을 위한 추천인 리스트가져오기
	@Override
	public List<StudyVO> StudyRecom(StudyVO vo) {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyRecom(vo);
		} catch (Exception ex) {
			System.out.println("StudyRecom 실패 : " + ex.getMessage());
		} 
			return list;
	}

//	공부해요 추천 실행
	@Override
	public int StudyRecomDoing(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyRecomDoing(vo);
		} catch (Exception ex) {
			System.out.println("StudyRecomDoing 실패 : " + ex.getMessage());
		}
		return result;
	}

//	춤을 춰요 배너
	@Override
	public List<VideoVO> videobanner() {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videobanner();
		} catch (Exception ex) {
			System.out.println("videobanner 실패 : " + ex.getMessage());
		}
		return list;
	}

//	놀아 봐요 배너
	public List<GameVO> gamebanner() {
		List<GameVO> list = null;
		try {
			list = VideoManager.gamebanner();
		} catch (Exception ex) {
			System.out.println("gamebanner 실패 : " + ex.getMessage());
		}
		return list;
	}

//	공부해요 배너
	public List<StudyVO> studybanner() {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studybanner();
		} catch (Exception ex) {
			System.out.println("studybanner 실패 : " + ex.getMessage());
		}
		return list;
	}


}
