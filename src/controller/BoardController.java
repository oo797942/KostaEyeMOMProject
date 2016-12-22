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
      String rip;   // 보안처리된  ip 담을 문자열
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
      String pass="";   //페이지 리턴할 문자열
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
            System.out.println(boardVO.getB_content());
      boardVO.setB_content(boardVO.getB_content().replaceAll("\r\n","<br>"));
      System.out.println("변환 : "+boardVO.getB_content());
      boardVO.setU_id(memberVO.getU_id());      // 아이디값 보드vo에 넣어주기
      boardVO.setB_ip(ip);                   //ip
      boardVO.setB_nick(memberVO.getU_nick());   //nickname
      int result=boardDao.writeBoard(boardVO);   //작성 데이터 db로
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
   //수정페이지 이동
   @RequestMapping("updateBoard.do")
   public String updateBoard(BoardVO boardVO, Model m){
      System.out.println(boardVO.getB_no());
      BoardVO vo = boardDao.viewBoard(boardVO);
      m.addAttribute("vo", vo);
      System.out.println(vo.getB_photo1name());
      return "board/boardUpdate";
   }
   
   //게시물 삭제
   @RequestMapping("deleteBoard.do")
   public String deleteBoard(BoardVO boardVO ){
      System.out.println("삭제 : "+ boardVO.getB_no()+"//"+boardVO.getB_cate());
      int result= boardDao.deleteBoard(boardVO);
      
      return "redirect:"+boardVO.getB_cate();
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
      int result=boardDao.writeReply(replyVO);   //DB넘김 
      
      return result;
      
   }
   
   
   //리플삭제
   @RequestMapping("reDelete.do")
   @ResponseBody
   public int reDelete(ReplyVO replyVO, HttpSession session){
      MemberVO vo = (MemberVO)session.getAttribute("user");
      String id = vo.getU_id();
      System.out.println(id);
      replyVO.setRe_id(id);
      int result = boardDao.replDelte(replyVO);
      return result;
   }
   
   //게시글 수정시 사진 삭제
   @RequestMapping("deletPic.do")
   @ResponseBody
   public int deletPic(BoardVO boardVO){
      int result=1;
      System.out.println("글번호 : "+boardVO.getB_no());
      
      return result;
   }
   
   //게시글 수정
   @RequestMapping("update.do")
   public String updateBoard(BoardVO boardVO){
      System.out.println("수정사진 : "+boardVO.getB_photo1name());
      int result= boardDao.updateBoard(boardVO);
      return "redirect:boardview.do?b_no="+boardVO.getB_no();
   }
   
   //추천
   @RequestMapping("good.do")
   @ResponseBody
   public int goodBoard(BoardVO boardVO, HttpSession session){
      int result=0;
      //추천인 중복확인
      MemberVO mVO=(MemberVO)session.getAttribute("user");
      boardVO.setU_id(mVO.getU_id());
      List<BoardVO> list = boardDao.checkGoodId(boardVO);
//      System.out.println("신고자리스트 : "+list.size());
      if(list.isEmpty()){
         
      }else{
         for(int i=0 ; i<list.size();i++){
               System.out.println("추천인 : "+mVO.getU_id());
               System.out.println("이미 추천한 사람 : "+list.get(i).getB_goodog());
            if(list.get(i).getB_goodog().equals(mVO.getU_id())){
               
               System.out.println("같은이름");
               result=1;
            }
         }
      }
      
      if(result==0){
         
         boardVO.setU_id(mVO.getU_id());
         boardDao.countGood(boardVO);
         result=2;
      }
      
      return result;
   }
   
   @RequestMapping("report.do")
   @ResponseBody
   public int reportBoard(BoardVO boardVO, HttpSession session){
      MemberVO mVO=(MemberVO)session.getAttribute("user");
      int result=0;
      result = boardDao.reportBoard(boardVO);
      
      return result;
   }
   

   // 공지사항 글 리스트
   @RequestMapping("/notice.do")
   public String goNotice(Model m, HttpSession session) {
      List<BoardVO> list = null;
      list = boardDao.allBoard("notice");
      for (int i = 0; i < list.size(); i++) {

         BoardVO boardVO = list.get(i);
         List<ReplyVO> listVO = boardDao.callReply(boardVO);

         list.get(i).setB_recount(listVO.size());
      }

      m.addAttribute("list", list);
      return "board/boardNotice";
   }
   
   //공지사항 글보기
   @RequestMapping("/noticeview.do")
   public String viewNotice(BoardVO boardVO, Model m){
      
      
      
      BoardVO vo=boardDao.viewBoard(boardVO); // 게시물 내용 호출
      List <ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출
      
      
      //ip보안을 위해 * 처리
      String ip= vo.getB_ip(); //작성자 ip가져오기
      StringTokenizer st= new StringTokenizer(ip, ".");
      String[] list = new String[4]; // " . "을 제거한 ip를 담을 list
      String rip;   // 보안처리된  ip 담을 문자열
      for(int i=0; st.hasMoreTokens();i++){
         
         list[i]=(String) st.nextToken();  // " . "을 제거한 ip를 list에 담는다
         
      }
      rip=list[0]+"."+list[1]+".*.*"; // 뒤에 두자리 보안처리
      vo.setB_ip(rip); // 보안ip 다시 담기
      
      m.addAttribute("bvo", vo); // 게시물 정보 모델에 담기
      m.addAttribute("list", listVO); //리플 정보 모델에 담기
      return "board/noticeView"; 
   }
   
   //공지사항 삭제
   @RequestMapping("deleteNotice.do")
   public String deleteNotice(BoardVO boardVO ){
      System.out.println("삭제 : "+ boardVO.getB_no()+"//"+boardVO.getB_cate());
      int result= boardDao.deleteBoard(boardVO);
      
      return "redirect:notice.do";
   }
   
   // 아나바다 리스트 이동
      @RequestMapping("/donation.do")
      public String calldonation(Model m) {
         List<BoardVO> list = null;

         list = boardDao.allBoard("donation");
         System.out.println(list.size());
         for (int i = 0; i < list.size(); i++) {

            BoardVO boardVO = list.get(i);
            List<ReplyVO> listVO = boardDao.callReply(boardVO);

            list.get(i).setB_recount(listVO.size());
         }

         m.addAttribute("list", list); // 가져온 DB를 모델에 저장
         return "board/boardDonation";
      }
      
      // 아나바다 뷰 이동
         @RequestMapping("/donationview.do")
         public String viewDonation(BoardVO boardVO, Model m){
            
            
            
            BoardVO vo=boardDao.viewBoard(boardVO); // 게시물 내용 호출
            List <ReplyVO> listVO = boardDao.callReply(boardVO); // 관련 리플 호출
            
            
            //ip보안을 위해 * 처리
            String ip= vo.getB_ip(); //작성자 ip가져오기
            StringTokenizer st= new StringTokenizer(ip, ".");
            String[] list = new String[4]; // " . "을 제거한 ip를 담을 list
            String rip;   // 보안처리된  ip 담을 문자열
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
            System.out.println("삭제 : "+ boardVO.getB_no()+"//"+boardVO.getB_cate());
            int result= boardDao.deleteBoard(boardVO);
            
            return "redirect:donation.do";
         }
         
         //아나바다 수정페이지 이동
         @RequestMapping("updateDonation.do")
         public String updateDonation(BoardVO boardVO, Model m){
            System.out.println(boardVO.getB_no());
            BoardVO vo = boardDao.viewBoard(boardVO);
            m.addAttribute("vo", vo);
            System.out.println(vo.getB_photo1name());
            return "board/donationUpdate";
         }
         
         //아나바다 수정 완료
         @RequestMapping("donationupdate.do")
         public String updateDonationFin(BoardVO boardVO){
            System.out.println("수정사진 : "+boardVO.getB_photo1name());
            int result= boardDao.updateBoard(boardVO);
            return "redirect:donationview.do?b_no="+boardVO.getB_no();
         }
         
         // 나눔완료
         @RequestMapping("donationfin.do")
         public String donationFin(BoardVO boardVO){
            int result= boardDao.donationFin(boardVO);
            return "redirect:donationview.do?b_no="+boardVO.getB_no();
         }
         
         
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
         
         //갤러리 이동
         @RequestMapping("gal.do")
         public String callGallery(Model m, @ModelAttribute("BoardVO") BoardVO boardVO, @RequestParam("title") String title){
            boardVO.setB_cate(title);
             //--페이징 처리
             int totalCount = boardDao.boardListCount(boardVO); //게시물 총갯수를 구한다
             boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
             boardVO.setPageSize(12);
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

//         @RequestMapping("/adminReport.go")
//         public String adminReport(HttpSession session, Model model, @ModelAttribute("BoardVO") BoardVO boardVO){
//
////            MemberVO memvo = (MemberVO) session.getAttribute("user");
////            model.addAttribute("user",memvo);
//             //--페이징 처리
//             int totalCount = boardDao.reportListCount(boardVO); //게시물 총갯수를 구한다
//             boardVO.setTotalCount(totalCount); //페이징 처리를 위한 setter 호출
//             model.addAttribute("pageVO", boardVO);
//
//             //--페이징 처리
//             
//             List<BoardVO>  boardList = boardDao.reportPagingBoard(boardVO);
//
//                     
//            model.addAttribute("list", boardList); //가져온 DB를 모델에 저장
//            
//            return "adminReport";
//         }

         

}
 