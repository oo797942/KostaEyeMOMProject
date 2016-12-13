package member.dao;

import java.sql.SQLException;
import java.util.List;

import member.vo.MemberVO;
import mybatis.manager.MypageManager;

public class MypageDaoImpl implements MypageDao {

	@Override
	public MemberVO userInfo(MemberVO vo) {
		MemberVO memberVO=null;
		try {
			memberVO = MypageManager.userInfo(vo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memberVO;
	}

	@Override
	public List getMyBoard(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyBoard(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List getMyReply(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyReply(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List getMyBoardList(MemberVO vo) {
		List list=null;
		try {
			list=MypageManager.getMyBoardList(vo);
		} catch (SQLException e) {
			// TODO Auto-genderated catch block
			e.printStackTrace();
		}
		return list;
	}
	
}
