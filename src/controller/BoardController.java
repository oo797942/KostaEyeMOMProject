package controller;
 
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import member.dao.BoardDaoImpl;
import member.vo.BoardVO;
import member.vo.MemberVO;
import member.vo.ReplyVO;


@Controller
public class BoardController {
	
	@Autowired
	private BoardDaoImpl boardDao;
	
	//글쓰기페이지로 이동
	@RequestMapping("/boardInsert.do")
	public String writeBoard(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("title", keyword ); // 게시판 종류 모델에 저장
		return "board/boardInesert";
	}  
	
	//게시글 리스트에서 게시글 눌렀을때
	@RequestMapping("/boardview.do")
	public String viewBoard(BoardVO boardVO, Model m){
		BoardVO vo=boardDao.viewBoard(boardVO); // 게시물 내용 호출
		List <ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출
		
		//ip보안을 위해 * 처리
		String ip= vo.getB_ip(); //작성자 ip가져오기
		StringTokenizer st= new StringTokenizer(ip, ".");
		String[] list = new String[4]; // " . "을 제거한 ip를 담을 list
		String rip;	// 보안처리된  ip 담을 문자열
		for(int i=0; st.hasMoreTokens();i++){
			list[i]=(String) st.nextToken();  // " . "을 제거한 ip를 list에 담는다
			
		}
		rip=list[0]+"."+list[1]+".*.*"; // 뒤에 두자리 보안처리
		vo.setB_ip(rip); // 보안ip 다시 담기
		
		m.addAttribute("bvo", vo); // 게시물 정보 모델에 담기
		m.addAttribute("list", listVO); //리플 정보 모델에 담기
		return "board/boardView"; 
	}
	
	//게시판 게시글 작성하고 등록 버튼 눌렀을때
	@RequestMapping("/insert.do")
	public String writeBoard(BoardVO boardVO, Model m, HttpSession session,HttpServletRequest request){
		String pass="";	//페이지 리턴할 문자열
		String ip = request.getRemoteAddr(); //작성자 ip
		String cate = boardVO.getB_cate(); //게시판 종류 가져오기
		MemberVO memberVO= (MemberVO) session.getAttribute("user"); //세션값 얻어오기
		
		// 가져온 cate값 DB형식에 맞게 변경
				if(cate.equals("육아꿀팁")){
					boardVO.setB_cate("tip");
					cate="tip.do?title=tip";
				}else if(cate.equals("묻고 말하기")){
					boardVO.setB_cate("qna_board");
				}else if(cate.equals("중고장터")){
					boardVO.setB_cate("used");
					cate="tip.do?title=used";
					if(boardVO.getB_scate().equals("삽니다")){
						boardVO.setB_scate("sell");
					}else if(boardVO.getB_scate().equals("팝니다")){
						boardVO.setB_scate("buy");
					}
				}else if(cate.equals("아이의 식단")){
					boardVO.setB_cate("rice");
					cate="gal.do?title=rice";
					if(boardVO.getB_scate().equals("초기")){
						boardVO.setB_scate("r_1");
					}else if(boardVO.getB_scate().equals("중기")){
						boardVO.setB_scate("r_2");
					}else if(boardVO.getB_scate().equals("후기")){
						boardVO.setB_scate("r_3");
					}else if(boardVO.getB_scate().equals("완료기")){
						boardVO.setB_scate("r_4");
					}
				}else if(cate.equals("아이 자랑")){
					boardVO.setB_cate("baby");
					cate="gal.do?title=baby";
				}else if(cate.equals("아나바다")){
					boardVO.setB_cate("donation");
					boardVO.setB_scate("나눔");
				}
		boardVO.setB_content(boardVO.getB_content().replaceAll("\r\n","<br>"));
		boardVO.setU_id(memberVO.getU_id());		// 아이디값 보드vo에 넣어주기
		boardVO.setB_ip(ip); 						//ip
		boardVO.setB_nick(memberVO.getU_nick());	//nickname
		int result=boardDao.writeBoard(boardVO);	//작성 데이터 db로
		//DB에 들어갔다면 페이지 이동
		if(result!=0){
			if(boardVO.getB_cate().equals("donation")){
				pass="redirect:donation.do";
			}else{
				pass="redirect:"+cate;	
			}
		}
			return pass;
	}

	
	//게시글 수정 버튼 눌렀을때 수정 페이지 이동
	@RequestMapping("updateBoard.do")
	public String updateBoard(BoardVO boardVO, Model m){
		BoardVO vo = boardDao.viewBoard(boardVO); // 해당글 가져오기
		m.addAttribute("vo", vo);
		return "board/boardUpdate";
	}
	
	//게시물 삭제 버튼 눌렀을 때
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(BoardVO boardVO ){
		int result= boardDao.deleteBoard(boardVO);
		return "redirect:"+boardVO.getB_cate();
	}
	
	//게시글 리플 입력했을때
	@RequestMapping("replinsert.do")
	@ResponseBody
	public int replInsert(ReplyVO replyVO, HttpSession session,HttpServletRequest request){
		MemberVO memberVO= (MemberVO) session.getAttribute("user"); //세션값 얻어오기
		String ip = request.getRemoteAddr(); // 사용자 ip값 얻어오기
		replyVO.setRe_ip(ip); //ip값 저장
		replyVO.setRe_id(memberVO.getU_id());
		replyVO.setRe_nick(memberVO.getU_nick());
		int result=boardDao.writeReply(replyVO);	//DB넘김 
		return result;
		
	}
	
	
	//게시글 댓글 삭제버튼 눌렀을 경우
	@RequestMapping("reDelete.do")
	@ResponseBody
	public int reDelete(ReplyVO replyVO, HttpSession session){
		MemberVO vo = (MemberVO)session.getAttribute("user");
		String id = vo.getU_id();
		replyVO.setRe_id(id);
		int result = boardDao.replDelte(replyVO);
		return result;
	}
	
	//게시글 수정시에 사진 삭제 눌렀을경우
	@RequestMapping("deletPic.do")
	@ResponseBody
	public int deletPic(BoardVO boardVO){
		int result=1;
		return result;
	}
	
	//게시글 수정버튼 눌렀을때
	@RequestMapping("update.do")
	public String updateBoard(BoardVO boardVO){
		int result= boardDao.updateBoard(boardVO);
		return "redirect:boardview.do?b_no="+boardVO.getB_no();
	}
	
	//게시글 추천 버튼 눌렀을때
	@RequestMapping("good.do")
	@ResponseBody
	public int goodBoard(BoardVO boardVO, HttpSession session){
		int result=0;
		//추천인 중복확인
		MemberVO mVO=(MemberVO)session.getAttribute("user");
		boardVO.setU_id(mVO.getU_id());
		List<BoardVO> list = boardDao.checkGoodId(boardVO);
		if(list.isEmpty()){
			
		}else{
			for(int i=0 ; i<list.size();i++){
				if(list.get(i).getB_goodog().equals(mVO.getU_id())){
					result=1;
				}
			}
		}
		if(result==0){
			boardVO.setU_id(mVO.getU_id());
			boardDao.countGood(boardVO); // 추천수 카운트
			result=2;
		}
		return result;
	}
	
	
	/*
	 * 게시글에서 부적한 경우 신고하기 눌렸을 때
	 */
	@RequestMapping("report.do")
	@ResponseBody
	public int reportBoard(BoardVO boardVO, HttpSession session){
		MemberVO mVO=(MemberVO)session.getAttribute("user");
		int result=0;
		result = boardDao.reportBoard(boardVO);
		return result;
	}
	

	// 공지사항 글 리스트 불러오기
	@RequestMapping("/notice.do")
	public String goNotice(Model m, HttpSession session) {
		List<BoardVO> list = null;
		list = boardDao.allBoard("notice");
		//리플수 가져오기
		for (int i = 0; i < list.size(); i++) {
			BoardVO boardVO = list.get(i);
			List<ReplyVO> listVO = boardDao.callReply(boardVO);
			list.get(i).setB_recount(listVO.size());
		}
		m.addAttribute("list", list);
		return "board/boardNotice";
	}
	
	//공지사항 글 리스트에서 게시물 눌렀을 때
	@RequestMapping("/noticeview.do")
	public String viewNotice(BoardVO boardVO, Model m){
		
		BoardVO vo=boardDao.viewBoard(boardVO); // 게시물 내용 호출
		List <ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출
		
		m.addAttribute("bvo", vo); // 게시물 정보 모델에 담기
		m.addAttribute("list", listVO); //리플 정보 모델에 담기
		return "board/noticeView"; 
	}
	
	//공지사항 게시글 삭제하기
	@RequestMapping("deleteNotice.do")
	public String deleteNotice(BoardVO boardVO ){
		int result= boardDao.deleteBoard(boardVO);
		
		return "redirect:notice.do";
	}
	
	// 아나바다 리스트 이동
		@RequestMapping("/donation.do")
		public String calldonation(Model m, BoardVO boardVO) {
			List<BoardVO> list = null;
			boardVO.setB_cate("donation");
			int totalCount = boardDao.boardListCount(boardVO); //게시물 총갯수를 구한다
		    boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
		    m.addAttribute("pageVO", boardVO);
			list = boardDao.allPagingBoard(boardVO);
			for (int i = 0; i < list.size(); i++) {
				BoardVO board = list.get(i);
				List<ReplyVO> listVO = boardDao.callReply(board);
				list.get(i).setB_recount(listVO.size());
			}
			m.addAttribute("list", list); // 가져온 DB를 모델에 저장
			return "board/boardDonation";
		}
		
		// 아나바다 리스트에서 게시글 눌렀을 떄
			@RequestMapping("/donationview.do")
			public String viewDonation(BoardVO boardVO, Model m){
				
				BoardVO vo=boardDao.viewBoard(boardVO); // 게시물 내용 호출
				List <ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출
				
				//ip보안을 위해 * 처리
				String ip= vo.getB_ip(); //작성자 ip가져오기
				StringTokenizer st= new StringTokenizer(ip, ".");
				String[] list = new String[4]; // " . "을 제거한 ip를 담을 list
				String rip;	// 보안처리된  ip 담을 문자열
				for(int i=0; st.hasMoreTokens();i++){
					list[i]=(String) st.nextToken();  // " . "을 제거한 ip를 list에 담는다
				}
				rip=list[0]+"."+list[1]+".*.*"; // 뒤에 두자리 보안처리
				vo.setB_ip(rip); // 보안ip 다시 담기
				m.addAttribute("bvo", vo); // 게시물 정보 모델에 담기
				m.addAttribute("list", listVO); //리플 정보 모델에 담기
				return "board/donationView"; 
			}
			
			//아나바다 삭제
			@RequestMapping("deleteDonation.do")
			public String deleteDonation(BoardVO boardVO ){
				int result= boardDao.deleteBoard(boardVO);
				return "redirect:donation.do";
			}
			
			//아나바다 수정페이지 이동
			@RequestMapping("updateDonation.do")
			public String updateDonation(BoardVO boardVO, Model m){
				BoardVO vo = boardDao.viewBoard(boardVO);
				m.addAttribute("vo", vo);
				return "board/donationUpdate";
			}
			
			//아나바다 수정 완료
			@RequestMapping("donationupdate.do")
			public String updateDonationFin(BoardVO boardVO){
				int result= boardDao.updateBoard(boardVO);
				return "redirect:donationview.do?b_no="+boardVO.getB_no();
			}
			
			// 아나바다 게시글에서 나눔완료 버튼 눌렀을 때
			@RequestMapping("donationfin.do")
			public String donationFin(BoardVO boardVO){
				int result= boardDao.donationFin(boardVO);
				return "redirect:donationview.do?b_no="+boardVO.getB_no();
			}
			
			// 게시판 카테고리별 리스트 불러오기
			@RequestMapping(value = "/tip.do", method = {RequestMethod.GET, RequestMethod.POST})
			public String page(HttpSession session,Model model, @ModelAttribute("BoardVO") BoardVO boardVO,@RequestParam("title") String title) {
				MemberVO memvo = (MemberVO) session.getAttribute("user");
				model.addAttribute("user",memvo);
				boardVO.setB_cate(title);
			    //--페이징 처리
			    int totalCount = boardDao.boardListCount(boardVO); //게시물 총갯수를 구한다
			    boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
			    model.addAttribute("pageVO", boardVO);

			    //--페이징 처리
			    List<BoardVO>  boardList = boardDao.allPagingBoard(boardVO);
				for(int i=0; i<boardList.size();i++){
				BoardVO boardVO1=boardList.get(i);
				List <ReplyVO> listVO = boardDao.callReply(boardVO1);
				boardList.get(i).setB_recount(listVO.size());
				}
				
				model.addAttribute("list", boardList); //가져온 DB를 모델에 저장
				model.addAttribute("title", title ); // 게시판 종류 모델에 저장
			    return  "board/board";
			}
			
			//카테고리별 갤러리 리스트 불러오기 (아이자랑, 식단)
			@RequestMapping("gal.do")
			public String callGallery(Model m, @ModelAttribute("BoardVO") BoardVO boardVO, @RequestParam("title") String title){
				boardVO.setB_cate(title);
			    //--페이징 처리
			    int totalCount = boardDao.boardListCount(boardVO); //게시물 총갯수를 구한다
			    boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
			    m.addAttribute("pageVO", boardVO);
			    //--페이징 처리
			    List<BoardVO>  boardList = boardDao.allPagingBoard(boardVO);
				for(int i=0; i<boardList.size();i++){
				BoardVO boardVO1=boardList.get(i);
				List <ReplyVO> listVO = boardDao.callReply(boardVO1);
				
				boardList.get(i).setB_recount(listVO.size());
				}
				m.addAttribute("list", boardList); //가져온 DB를 모델에 저장
				m.addAttribute("title", title); // 게시판 종류 모델에 저장
				
				return "board/boardgallery";
			}
			
//관리자에서 신고된 게시물 리스트 가져오기
			@RequestMapping("/adminReport.go")
			public String adminReport(HttpSession session, Model model, @ModelAttribute("BoardVO") BoardVO boardVO){
			    //--페이징 처리
			    int totalCount = boardDao.reportListCount(boardVO); //게시물 총갯수를 구한다
			    boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
			    model.addAttribute("pageVO", boardVO);

			    //--페이징 처리
			    List<BoardVO>  boardList = boardDao.reportPagingBoard(boardVO);
				model.addAttribute("list", boardList); //가져온 DB를 모델에 저장
				
				return "adminReport";
			}

			

	
}
 