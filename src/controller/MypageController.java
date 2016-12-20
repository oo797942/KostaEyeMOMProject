package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.dao.MypageDaoImpl;
import member.vo.BoardVO;
import member.vo.MemberVO;
import member.vo.QnAVO;
import member.vo.ReplyVO;

@Controller
public class MypageController {
	
	@Autowired
	private MypageDaoImpl mypageDao;
	
	//마이페이지 이동
	@RequestMapping("/mypage.do")
	public String mypage(HttpSession session, Model m ){
		//사용자 정보가져오기
		MemberVO memberVO= (MemberVO)session.getAttribute("user");
		MemberVO vo=mypageDao.userInfo(memberVO);
		m.addAttribute("user", vo);
		
		//내가쓴글 최근 4개 가져오기
		List <BoardVO>list= mypageDao.getMyBoard(memberVO);
		m.addAttribute("blist", list);
		System.out.println("리스트"+list.size());
		
		//내가 쓴 댓글 최근 4개
		List <ReplyVO> rlist= mypageDao.getMyReply(memberVO);
		System.out.println("rlist : "+rlist.size());
		m.addAttribute("rlist",rlist);
		
		//qna
		List <QnAVO> qlist = mypageDao.getMyQna(memberVO);
		System.out.println("답변"+qlist.get(0).getIn_recount());
		m.addAttribute("qlist",qlist);
		return "mypage/mypage";
	}
	
	//내가 쓴글 전체보기 리스트
	@RequestMapping("myboard.do")
	public String myBoard(HttpSession session, Model m){
		
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		List <BoardVO> list = mypageDao.getMyBoardList(memberVO);
		System.out.println("list : "+list.size());
		
		m.addAttribute("list", list);
		return "board/myboard";
	}
	
	//내가 쓴 댓글 전체보기 리스트
	@RequestMapping("replyboard.do")
	public String replyboard(HttpSession session, Model m){
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		List <BoardVO> list = mypageDao.getReplyList(memberVO);
		System.out.println("list : "+list.size());
		m.addAttribute("list", list);
		return "board/replyboard";
	}
	
	@RequestMapping("myqnalist.do")
	public String qnaBoard(HttpSession session, Model m){
		MemberVO memberVO=(MemberVO)session.getAttribute("user");
		List <BoardVO> list = mypageDao.getQnaList(memberVO);
		System.out.println("list : "+list.size());
		m.addAttribute("list", list);
		return "board/boardQna";
	}
}
