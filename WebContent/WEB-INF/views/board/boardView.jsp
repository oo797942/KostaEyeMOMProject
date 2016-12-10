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
							<th colspan="1" class='boardtd0' ><label>${bvo.b_no}</label><input type="hidden" id="b_no" name="b_no" value= "${bvo.b_no}"></th>
							<th colspan="9" class='boardtd1'><label id='title'>${bvo.b_title}</label></th>
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
							<th colspan="10"	 class='boardtd1'><label id='id'>${bvo.b_nick}</label></th>
							<th class='boardtd2'><label id='date'>${bvo.b_date}</label></th>
						</tr>
						<!-- 조회수, 추천수, 신고수 -->	
						<tr id='trcolor2'>
							<th colspan="4"></th>
								<th class='countfont' width="20px">조회수&nbsp;&nbsp;:</th>
								<th  class='countfont alignleft'id='count'>${bvo.b_count}</th>
								<th width="20px"></th>
								<th width="20px"></th>
								<th class='countfont'width="20px">추천수&nbsp;&nbsp;:</th>
								<th class='countfont alignleft' id='good'>${bvo.b_good}</th>
							<td><p class='boardip' id='ip'>${bvo.b_ip}</p></td>
						</tr>
						<tr id='trcolor2'>
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
					
					<div id='comment2'>				<!-- 댓글전체창 -->	
						<div>
							<ul id='viewul'>
								<li>		<!-- for문을 돌려야할듯 -->
									<div>
										<table id='tablewidth2'>
									<c:forEach var='vo' items='${list}'>
											<tr style="height: 70px;">
												<th width="70px">${vo.re_nick}</th>
												<td>${vo.re_date }</td>
											</tr>
											<tr>
												<td >${vo.re_content }</td>
												<td>${vo.re_ip }</td>	
											</tr>
									</c:forEach>
										</table>
											
										
									</div>
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
											<div class='submitbtn2'>
												<input type="submit" onclick="replyInsert()" value="등록" class='submita' style="">
<%-- 												<a href='replinsert.do?b_no=${bvo.b_no}' class='submita' style="" >등록</a> --%>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div> 
					</div>
				</form>
				</div>	
			</div>
		</div>
	</section>
</div>
</body>
</html>