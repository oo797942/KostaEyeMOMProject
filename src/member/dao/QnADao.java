package member.dao;

import java.util.List;

import member.vo.AnswerVO;
import member.vo.AreplyVO;
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
	int qnaListCount();
	List<QnAVO> allPagingQna(QnAVO vo);
	int insertQna(QnAVO vo);
	int Count(QnAVO vo);
	QnAVO callQna(QnAVO vo);
	int insertAnswer(AnswerVO vo);
	List<AnswerVO> callAnwer(QnAVO vo);
	int insertReply(AreplyVO vo);
	List<AreplyVO> callReply(AnswerVO vo);
	int deleteAnswerReply(AreplyVO vo);
}
 