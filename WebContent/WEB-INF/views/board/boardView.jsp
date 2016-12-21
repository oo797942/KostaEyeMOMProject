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
	
	
	
	$(function(){
		//신고하기
		$('.reportbtn').click(function(){
			alert($('#b_no').val()+"신고")
			$.ajax({
		        url: "report.do",
		        type: 'post',
		        data : { "b_no" : $('#b_no').val()	},
		       	success: function(result){
		       	  
		       		if(result=="1"){
		       			location.reload();
		       		
		        	 }else{
		        		 alert("추천 실패");
		        	 } 
		           },
			       error:function(err){
			    	   alert(err);
			       }
		     });
		});
		
		
		//추천		
		$('.goodbtn').click(function(){
			alert($('#b_no').val())
			$.ajax({
		        url: "good.do",
		        type: 'post',
		        data : { "b_no" : $('#b_no').val(),"b_nick" : $('#id').val()	},
		       	success: function(result){
		       	  
		       		if(result=="2"){
		       			location.reload();
		       			
		        	 }else if(result=="1"){
		        		 alert("이미 추천한 게시물입니다");
		        	 }else{
		        		 alert("추천 실패");
		        	 } 
		           },
			       error:function(err){
			    	   alert(err);
			       }
		     });
		});
		
		
		
		//리플삭제
		$('.boarddelete').click(function(){
			
			$.ajax({
		        url: "reDelete.do",
		        type: 'post',
		        data : { "re_no" : $(this).next().val()	},
		       	success: function(result){
		       	  
		       		if(result=="1"){
		       			location.reload();
		       			
		        	 }else{ alert("본인이 작성한 댓글이 아닙니다");} 
		           },
			       error:function(err){
			    	   alert(err);
			       }
		     });
			
			
		})
		//목록으로 돌아가기
		$('#golist').click(function(){
			
			var pass= "";
			pass=$("#cate").val()
			alert(pass);
			location.href=pass;
		});
		
		//삭제
		$('#godelete').click(function(){
			q = confirm("정말 게시물을 삭제하시겠습니까?");
			if (q == true)
			{	
				var num = $('#b_no').val();
				var cate = $("#cate").val();
// 				var pass= "deleteBoard.do?b_no"+num+"$b_cate="+cate;
// 				alert(pass);
				location.href="deleteBoard.do?b_no="+num+"&b_cate="+cate;
			}
			else
			{
				
			}
		});
		
		//수정하기
		$('#goupdate').click(function(){
			var num = $('#b_no').val();
			
			location.href="updateBoard.do?b_no="+num;
		});
		
	});
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
							<input type="hidden" id="cate" name="cate" value= "${bvo.b_cate}">
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
								<c:if test="${not empty bvo.b_photo1name }">
                    				 <img src="/EyeMOM/resources/img/${bvo.b_photo1name}" class="miri"><br/>
			                     </c:if>
			                     <c:if test="${not empty bvo.b_photo2name }">
			                     	<img src="/EyeMOM/resources/img/${bvo.b_photo2name}" class="miri"><br/>
			                     </c:if>
			                     <c:if test="${not empty bvo.b_photo3name }">
			                     	<img src="/EyeMOM/resources/img/${bvo.b_photo3name}" class="miri"><br/>
			                     </c:if>
								
								${bvo.b_content}
							</p></td>
						</tr>
					</table>
					
					<!-- 추천버튼 -->
					<div>
						<div class='gooddiv'>
							<i class='fa fa-thumbs-o-up' ><span><input type='button' value='추천'  class='goodbtn'/></span></i>				
						</div>	
					</div>
					<!-- 테이블과 테이블 사이 간격  -->
					<div class='space2'></div>
						
					<!-- 신고버튼 -->	

					<div>   
						<div class='reportdiv'>							
							<i class='fa fa-thumbs-o-down' style="color: red" ><span><input type='button' onclick="" value='신고' class='reportbtn'/></span></i>				
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
												<td><input type="button" value='x' id="redelete" class='boarddelete'/><input type="hidden" id="re_no" name="re_no" value= "${vo.re_no}"/></td>
											</tr>
											<tr>
											</tr>
										</table>  
										<p class='boardp'>
										
										
										${vo.re_content }</p><br/><hr width="86%"/>	<!-- 내용 -->
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
							<c:if test="${bvo.u_id==sessionScope.user.getU_id()}" >
							<input type='button' value='수정하기' id="goupdate" class='optionbtn'/>				
							<input type='button' value='삭제하기' id="godelete" class='optionbtn'/>					
							</c:if>
								<c:if test="${sessionScope.user.getU_id()=='admin'}" >
							<input type='button' value='수정하기' id="goupdate" class='optionbtn'/>				
							<input type='button' value='삭제하기' id="godelete" class='optionbtn'/>					
							</c:if>
							<input type='button' value='목록보기' id="golist" class='optionbtn'/>					
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