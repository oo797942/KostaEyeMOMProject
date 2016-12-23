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

	@Override
	public int adminVideoInput(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoInput(vo);
			System.out.println("겜등록 성공 :" + result);
		} catch (Exception ex) {
			System.out.println("게임 등록 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public int adminStudyInput(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyInput(vo);
			System.out.println("겜등록 성공 :" + result);
		} catch (Exception ex) {
			System.out.println("게임 등록 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public List<VideoVO> videoBoard() {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videoBoard();
		} catch (Exception ex) {
			System.out.println("영상목록들고오기 실패 : " + ex.getMessage());
		} finally {
			return list;
		}
	}

	@Override
	public VideoVO videoBoardView(VideoVO vo) {
		VideoVO vlist = null;
		try {
			vlist = VideoManager.videoView(vo);
		} catch (Exception ex) {
			System.out.println("게임목록들고오기 실패 : " + ex.getMessage() + ">");
		} finally {
			return vlist;
		}
	}

	
	public int studyListCount(StudyVO vo) {

		int totalCount = 0;
		try {
			totalCount = VideoManager.studyTotalCount(vo);
		} catch (Exception ex) {
			System.out.println("boardDAOImpl / 베스트레시피 후기 가져오기 실패 : " + ex.getMessage());
		}
		return totalCount;	
	}
	
	@Override
	public List<StudyVO> studyBoard(StudyVO vo) {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyBoard(vo);
		} catch (Exception ex) {
			System.out.println("영상목록들고오기 실패 : " + ex.getMessage());
		} finally {
			return list;
		}
	}
	
	@Override
	public List<StudyVO> studyBoardAndroid() {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyBoardAndroid();
		} catch (Exception ex) {
			System.out.println("영상목록들고오기 실패 : " + ex.getMessage());
		} finally {
			return list;
		}
	}
	
	

	@Override
	public StudyVO studyBoardView(StudyVO vo) {
		StudyVO vlist = null;
		try {
			vlist = VideoManager.studyView(vo);
		} catch (Exception ex) {
			System.out.println("게임목록들고오기 실패 : " + ex.getMessage() + ">");
		} finally {
			return vlist;
		}
	}

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

	@Override
	public int adminVideoUpdate(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoUpdate(vo);
			System.out.println("겜수정 성공 :" + result);
		} catch (Exception ex) {
			System.out.println("게임 수정 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public int adminStudyUpdate(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyUpdate(vo);
			System.out.println("겜수정 성공 :" + result);
		} catch (Exception ex) {
			System.out.println("게임 수정 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public List<VideoVO> VideoRecom(VideoVO vo) {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videoRecom(vo);
		} catch (Exception ex) {
			System.out.println("게임목록들고오기 실패 : " + ex.getMessage());
		} finally {
			return list;
		}

	}

	@Override
	public int VideoRecomDoing(VideoVO vo) {
		int result = 0;
		try {
			result = VideoManager.videoRecomDoing(vo);
			System.out.println("겜수정 성공 :" + result);
		} catch (Exception ex) {
			System.out.println("게임 수정 실패 : " + ex.getMessage());
		}
		return result;
	}

	@Override
	public List<StudyVO> StudyRecom(StudyVO vo) {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studyRecom(vo);
		} catch (Exception ex) {
			System.out.println("게임목록들고오기 실패 : " + ex.getMessage());
		} finally {
			return list;
		}
	}

	@Override
	public int StudyRecomDoing(StudyVO vo) {
		int result = 0;
		try {
			result = VideoManager.studyRecomDoing(vo);
			System.out.println("겜수정 성공 :" + result);
		} catch (Exception ex) {
			System.out.println("게임 수정 실패 : " + ex.getMessage());
		}
		return result;
	}

	public List<VideoVO> videobanner() {
		List<VideoVO> list = null;
		try {
			list = VideoManager.videobanner();
		} catch (Exception ex) {
			System.out.println("춤을춰요 배너 불러오기 실패 : " + ex.getMessage());
		}
		return list;
	}

	public List<GameVO> gamebanner() {
		List<GameVO> list = null;
		try {
			list = VideoManager.gamebanner();
		} catch (Exception ex) {
			System.out.println("놀아봐요 배너 불러오기 실패 : " + ex.getMessage());
		}
		return list;
	}

	public List<StudyVO> studybanner() {
		List<StudyVO> list = null;
		try {
			list = VideoManager.studybanner();
		} catch (Exception ex) {
			System.out.println("공부해요 배너 불러오기 실패 : " + ex.getMessage());
		}
		return list;
	}



}
