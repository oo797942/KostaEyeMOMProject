package member.dao;

import java.util.ArrayList;
import java.util.List;

import member.vo.MemberVO;
import member.vo.QnAVO;

public interface QnADao {
	// main QnA 리스트 select
	List<QnAVO> newQna(); 
}
 