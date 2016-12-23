package mybatis.manager;

import java.io.IOException;
import java.io.Reader;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import member.vo.BoardVO;
import member.vo.GameVO;
import member.vo.MemberVO;
import member.vo.StudyVO;
import member.vo.VideoVO;

public class VideoManager {
// 춤을 춰요, 공부 해요 (영상물)관련 매니저
	
	
	// 춤을 춰요 입력 실행
	public static int videoInput(VideoVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.insert("admin.videoInput", vo);
		session.commit();
		return result; 
	}

	// 공부해요 입력 실행
	public static int studyInput(StudyVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.insert("admin.studyInput", vo);
		session.commit();
		return result; 
	}

//	 춤을 춰요 리스트 가져오기
	public static List<VideoVO> videoBoard() throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<VideoVO> list = null;
		list = session.selectList("admin.videoAll");
		return list;
	}
	
	   // 페이징을 위한 공부해요 총갯수 뽑아오기
	   public static int videoTotalCount(VideoVO VO) throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("admin.videoTotalCount", VO);
	      session.commit();
	      return totalCount;
	   }
	   
//	 페이징을 위한 춤을 춰요 리스트 가져오기
	public static List<VideoVO> videoBoardp(VideoVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<VideoVO> list = null;
		list = session.selectList("admin.videoAllp",vo);
		return list;
	}


//	 춤을 춰요 뷰(실행창)을 띄우기위한 정보 가져오기
	public static VideoVO videoView(VideoVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
//		춤을 춰요 조회수 1증가
		session.update("admin.videoCount", vo);
		VideoVO vlist = session.selectOne("admin.videoAll", vo);
		session.commit();
		return vlist;
	}

	
//	    페이징을 위한 공부해요 총 갯수 가져오기
	   public static int studyTotalCount(StudyVO VO) throws SQLException {
	      SqlSession session = CommonManager.db().openSession();
	      int totalCount = session.selectOne("admin.studyTotalCount", VO);
	      session.commit();
	      return totalCount;
	   }
	   
//		 공부해요 리스트 가져오기
		public static List<StudyVO> studyBoardn() throws 	SQLException {
			SqlSession session = CommonManager.db().openSession();
			List<StudyVO> list = null;
			list = session.selectList("admin.studyAll");
			return list;
		}

		
//	 페이징 처리된 공부해요 리스트 가져오기
	public static List<StudyVO> studyBoard(StudyVO vo) throws 	SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<StudyVO> list = null;
		list = session.selectList("admin.studyAllp",vo);
		return list;
	}
	
//	 공부해요 리스트 가져오기
	public static List<StudyVO> studyBoardAndroid() throws 	SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<StudyVO> list = null;
		list = session.selectList("admin.studyAll");
		return list;
	}
	
//	 공부해요 뷰(실행창)을 띄우기위한 정보 가져오기
	public static StudyVO studyView(StudyVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
//		공부해요 조회수 1증가
		session.update("admin.studyCount", vo);
		StudyVO vlist = session.selectOne("admin.studyAll", vo);
		session.commit();
		return vlist;
	}

//춤을 춰요 삭제 실행
	public static int videoDelete(VideoVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		int result = session.delete("admin.videoDelete", vo);
		session.commit();
		return result;
	}

//	공부 해요 삭제 실행
	public static int studyDelete(StudyVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		int result = session.delete("admin.studyDelete", vo);
		session.commit();
		return result;
	}

//	춤을 춰요 수정 실행
	public static int videoUpdate(VideoVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("admin.videoUpdate", vo);
		session.commit();
		return result;
	}

//	공부해요 수정 실행
	public static int studyUpdate(StudyVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("admin.studyUpdate", vo);
		session.commit();
		return result;
	}

	
	public static List<VideoVO> videoRecom(VideoVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<VideoVO> list = null;
		list = session.selectList("admin.videoRecom", vo);
		session.commit();
		return list;
	}

	public static int videoRecomDoing(VideoVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("admin.videoRecomDoing", vo);
		session.commit();
		return result;
	}

	public static List<StudyVO> studyRecom(StudyVO vo) throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<StudyVO> list = null;

		list = session.selectList("admin.studyRecom", vo);
		System.out.println(list.size());

		session.commit();
		return list;
	}

	public static int studyRecomDoing(StudyVO vo) throws SQLException {
		int result = 0;
		SqlSession session = CommonManager.db().openSession();
		result = session.update("admin.studyRecomDoing", vo);
		session.commit();
		return result;
	}

	// 공부 배너
	public static List<StudyVO> studybanner() throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<StudyVO> list = null;

		list = session.selectList("admin.studybanner");

		session.commit();
		return list;
	}
	
	// 게임 배너
	public static List<GameVO> gamebanner() throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<GameVO> list = null;

		list = session.selectList("admin.gamebanner");

		session.commit();
		return list;
	}
	
	// 춤을춰요 배너
	public static List<VideoVO> videobanner() throws SQLException {
		SqlSession session = CommonManager.db().openSession();
		List<VideoVO> list = null;

		list = session.selectList("admin.videobanner");

		session.commit();
		return list;
	}

}
