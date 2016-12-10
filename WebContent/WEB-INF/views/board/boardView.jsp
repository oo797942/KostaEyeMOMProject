<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/EyeMOM/resources/css/boardView.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<script type="text/javascript">
	function replyInsert(){
		$.ajax({
	        url: "replinsert.do",
	        type: 'post',
	        data : { "b_no" : $("#b_no").val(),
	        	"re_content" : $("#re_content").val()	},
	       	success: function(result){
	       	  
	       		if(result=="1"){
	       			location.reload();
	       			
	        	 }else{ alert("아이디와 비밀번호를 확인하세요");} 
	           },
		       error:function(err){
		    	   alert(err);
		       }
	     });
	}
</script>
</head>
<body>
<div class='body'>
	<section class="page_head">
		<br />
		<div class="container theme-showcase" role="main"  style="margin-bottom: 90px">
			<div align="center">
				<h1>게시판</h1>
				<br />
				<div id='tableall2'>			 <!-- 게시판 전체 div -->
					<form method='post' onclick='return false'>
					<table class='boardtable'>   <!-- 테이블 전체 div -->
						<tr id='trcolor2'>
							<!-- 글번호 -->
							<td colspan="1" class='boardtd0' ><label>${bvo.b_no}</label><input type="hidden" id="b_no" name="b_no" value= "${bvo.b_no}"></td>
							<!-- 게시글 제목 -->
							<th colspan="9" class='boardtd1'><label id='title'>${bvo.b_title}</label></th>
							<!-- 게시판 카테고리 -->
							<th class='boardtd2'>
							<c:if test="${bvo.b_cate=='tip'}">
								<label id='cate'>육아꿀팁</label> 
							</c:if>
							<c:if test="${bvo.b_cate=='qna_board'}">
								<label id='cate'>묻고 말하기</label> 
							</c:if>
							<c:if test="${bvo.b_cate=='kid_sick'}">
								<label id='cate'>아이가 아파요</label> 
							</c:if>
							<c:if test="${bvo.b_cate=='rice'}">
								<label id='cate'>아이의 식단</label> 
							</c:if>
							<c:if test="${bvo.b_cate=='baby'}">
								<label id='cate'>아이자랑</label> 
							</c:if>
							</th>
						</tr>
						<tr id='trcolor2'>
							<td colspan="1" class='boardtd0' ></td>
							<!-- 게시자 -->
							<th colspan="9" class='boardtd1'><label id='id'>${bvo.b_nick}</label></th>
							<!-- 게시일, 시간 -->
							<td class='boardtd2'><label id='date'>${bvo.b_date}</label></td>
						</tr>
						<!-- 조회수, 추천수, ip -->	
						<tr id='trcolor2'>
								<th class='countfont' width="20px">조회수&nbsp;&nbsp;:</th>
								<!-- 조회수 -->
								<th  class='countfont alignleft'id='count'>${bvo.b_count}</th>
								<th class='countfont'width="20px">추천수&nbsp;&nbsp;:</th>
								<!-- 추천수 -->
								<th class='countfont alignleft' id='good'>${bvo.b_good}</th>
								<th width="40px"></th>
								<th width="40px"></th>
								<th colspan="4"></th>
								<!-- 게시자 ip -->
								<td><p class='boardip' id='ip'>${bvo.b_ip}</p></td>
						</tr>
						<tr id='trcolor2'>
							<!-- 내용뷰 -->
							<td colspan="11" height="500px" valign="top"id='content2'>
							<p style="margin-top: 15px">
<!-- 							<img alt="이미지가 올라갈 영역임" src="#" border="2"> -->
								${bvo.b_content}
							</p></td>
						</tr>
					</table>
					
					<!-- 추천버튼 -->
					<div>
						<div class='gooddiv'>
							<i class='fa fa-thumbs-o-up' ><span><input type='button' value='추천' class='goodbtn'/></span></i>				
						</div>	
					</div>
					<!-- 테이블과 테이블 사이 간격  -->
					<div class='space2'></div>
						
					<!-- 신고버튼 -->	
					<div>   
						<div class='reportdiv'>	
							<i class='fa fa-thumbs-o-down' style="color: red" ><span><input type='button'  value='신고' class='reportbtn'/></span></i>				
						</div>
					</div>
					    
					<!-- 테이블과 테이블 사이 간격  -->
					<div class='space2'></div>
				
					<!-- 댓글화면 -->
					<div id='comment2'>				
						<div>
							<ul id='viewul'>
								<li>		<!-- for문을 돌려야할듯 -->
									<c:forEach var='vo' items='${list}'>
									<div>
										<table class='tablewidth2'>
											<tr style="height: 70px;">
												<th width="70px">${vo.re_nick}</th>		<!-- 닉네임 -->
												<td class='boardip'>${vo.re_ip 	}</td>								<!-- 아이피 -->
												<td class='boarddate'>${vo.re_date }</td>					<!-- 등록일 -->
												<td><input type="button" value='x' style="	border : 1px solid black; background-color: white;border-radius : 5px;	
	width: 25; 
	height: 25; "/></td>
											</tr>
											<tr>
											</tr>
										</table>  
										<p class='boardp'>${vo.re_content }</p><br/><hr width="86%"/>	<!-- 내용 -->
									</div>
									</c:forEach>
								</li>			
							</ul>
						</div>
						<div>				<!-- 댓글 입력창 -->
							<table class='inputco2'>
								<tbody id='viewtbody'>
									<tr>
										<td class='i1'>
											<div class='texta2'>
												<textarea rows="2" cols="50" id="re_content" name="re_content" style="overflow: hidden; line-height: 14px; height: 61px" class='textaa2'></textarea>
											</div>
										</td>
										<td class='i2'>
											<!-- 댓글등록버튼 -->
											<div>
												<input type="submit" onclick="replyInsert()" value="등록" class='submita'>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- 수정/삭제/목록보기 버튼 --> 
						<div style="float: right;">
							<input type='button' value='수정하기' class='optionbtn'/>					
							<input type='button' value='삭제하기' class='optionbtn'/>					
							<input type='button' value='목록보기' class='optionbtn'/>					
						</div>
						<div class='space2'></div>
					</div><!-- class='comment2 끝' -->
				</form>
				</div>	
			</div>
		</div>
	</section>
</div>
</body>
</html>