package mybatis.manager;

import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import member.vo.MemberVO;
import member.vo.QnAVO;

public class QnAManager {

	public static ArrayList<QnAVO> mainQnaList() throws SQLException
	   {
		   SqlSession session = CommonManager.db().openSession();
		   ArrayList<QnAVO> list = (ArrayList) session.selectList("user.idCheck");
		  // System.out.println("manager : "+memberVO.getU_id());
		   	return list;
	   }
	
	
}
