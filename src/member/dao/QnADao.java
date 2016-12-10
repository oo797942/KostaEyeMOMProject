package member.dao;

import java.util.List;

import member.vo.QnAVO;

public interface QnADao {
	// main QnA 리스트 select
	List<QnAVO> newQna(); 
}
 