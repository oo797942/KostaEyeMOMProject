package member.dao;

import java.util.List;

import member.vo.FaqVO;
import member.vo.QnAVO;

public interface QnADao {
	// main QnA 리스트 select
	List<QnAVO> newQna(); 
	List<QnAVO> allQna();
	int writeFaq(FaqVO vo);
	List<FaqVO> allFaq();
	FaqVO selectFaq(FaqVO vo);
	int faqListCount(FaqVO faqVO);
	List<FaqVO> allPagingFaq(FaqVO vo);
	int faqAnswerDoing(FaqVO vo);
}
 