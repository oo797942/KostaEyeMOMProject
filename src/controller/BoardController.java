package controller;
 
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//보드리스트 이동
	@RequestMapping(value = "{title}", method = RequestMethod.GET)
	public String callBoard(Model m,@PathVariable("title") String title){
		List<BoardVO> list=null;
		
		list =boardDao.allBoard(title);  //게시판별 모든 리스트를 가져오기위해 
		
		m.addAttribute("list", list); //가져온 DB를 모델에 저장
		m.addAttribute("title", title ); // 게시판 종류 모델에 저장
		return "board/board";
	}
	
	//글쓰기 이동
	@RequestMapping("/boardInsert.do")
	public String writeBoard(Model m,@RequestParam("keyword") String keyword){
		m.addAttribute("title", keyword ); // 게시판 종류 모델에 저장
		return "board/boardInesert";
	}  
	//글보기
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
	
	//게시판 작성
	@RequestMapping("/insert.do")
	public String writeBoard(BoardVO boardVO, Model m, HttpSession session,HttpServletRequest request){
		String pass="";	//페이지 리턴할 문자열
		String ip = request.getRemoteAddr(); //작성자 ip
		String cate = boardVO.getB_cate(); //게시판 종류 가져오기
		MemberVO memberVO= (MemberVO) session.getAttribute("user"); //세션값 얻어오기
		
		
		// 가져온 cate값 DB형식에 맞게 변경
				if(cate.equals("육아꿀팁")){
					boardVO.setB_cate("tip");
				}else if(cate.equals("묻고 말하기")){
					boardVO.setB_cate("qna_board");
				}else if(cate.equals("아이가 아파요")){
					boardVO.setB_cate("kid_sick");
				}else if(cate.equals("아이의 식단")){
					boardVO.setB_cate("rice");
				}else if(cate.equals("아이자랑")){
					boardVO.setB_cate("baby");
				}
		
		boardVO.setU_id(memberVO.getU_id());		// 아이디값 보드vo에 넣어주기
		boardVO.setB_ip(ip); 						//ip
		boardVO.setB_nick(memberVO.getU_nick());	//nickname
		
		int result=boardDao.writeBoard(boardVO);	//작성 데이터 db로
		if(result!=0){
			pass="redirect:"+boardVO.getB_cate();	//DB에 들어갔다면 페이지 이동
		}
			return pass;
		
	}
	
	//리플입력
	@RequestMapping("replinsert.do")
	@ResponseBody
	public int replInsert(ReplyVO replyVO, HttpSession session,HttpServletRequest request){
		
		System.out.println("리리 게시판 번호"+replyVO.getB_no()+"  리리 내용 : "+ replyVO.getRe_content());
		MemberVO memberVO= (MemberVO) session.getAttribute("user"); //세션값 얻어오기
		String ip = request.getRemoteAddr(); // 사용자 ip값 얻어오기
		replyVO.setRe_ip(ip); //ip값 저장
		replyVO.setRe_id(memberVO.getU_id());
		replyVO.setRe_nick(memberVO.getU_nick());
		int result=boardDao.writeReply(replyVO);	//DB넘김 
		
		return result;
		
	}
}
 