<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/faqboard.css">
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css'>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
<link rel="stylesheet" href="resources/css/qnaboard.css">
<script type="text/javascript">
	$(function() {
		//      팝업 띄우기 위한 쿼리
		$('#popupLink').magnificPopup({
			type : 'inline',
			midClick : true
		// allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
		});	

		
		$('.AqnaComment').hide();

		$('.AqnaOpinion').click(function() {
			$(this).parent().parent().next().toggle()
		});

		$(function(){	
			$('.faqasr').hide();
			//답변 토글

			$('.faqtr a').click(function() {
				$(this).parent().parent().nextUntil(".faqtr").toggle();
			});

			//다시쓰기
			$('#rebtn').click(function() {
				
				$('#a_content').val("");
			});

		
			//버튼 클릭시
			$('#btnfqa').click(function() {
				
				var content = $('#a_content').val()
				if (content == null) {
					alert("내용을 입력하세요");
				} else {

					$.ajax({
						url : "answerqna.do",
						type : 'POST',
						data : {
							"a_content" : $("#a_content").val(),
							"b_no" :  $("#no").val()
						},
						success : function(result) {

							if (result == "1") {
								location.reload();

							} else {
								alert("답변 등록에 실패 하였습니다");
							}

						},
						error : function(err) {
							alert(err);
						}
					});

				}

			});
			
			
			//리플등록
			$('#replybtn').click(function() {
				
				var content = $('#ar_content').val()
				if (content == null) {
					alert("내용을 입력하세요");
				} else {

					$.ajax({
						url : "answerReply.do",
						type : 'POST',
						data : {
							"ar_content" : $("#ar_content").val(),
							"a_no" :  $(this).next().val()
						},
						success : function(result) {

							if (result == "1") {
								location.reload();

							} else {
								alert("답변 등록에 실패 하였습니다");
							}

						},
						error : function(err) {
							alert(err);
						}
					});

				}

			});
		
		
			//리플삭제
			$('#repldelbtn').click(function() {
				
				
					$.ajax({
						url : "deleteAnswerReply.do",
						type : 'POST',
						data : {
							"ar_no" : $("#ar_no").val()
						},
						success : function(result) {

							if (result == "1") {
								location.reload();

							} else {
								alert("댓글 삭제에 실패 하였습니다");
							}

						},
						error : function(err) {
							alert(err);
						}
					});

				
			});
		
		
		
		
		});
		
		

	});
</script>
</head>
<body>
	<div class='body' style="height:1000px">
		<div>
			<!-- 질문창 -->
			<div
				style="margin: 50px auto; border: 1px solid #000; width: 900px; height: 670px; text-align: left;">
				<img alt="" class='qnaimg' src="img/qnaQ1.png">
				<div style="float: left; padding: 0 30px;">
					<div>
					<input type="hidden" value="${vo.b_no}" id="no"/>
						<strong class='AqnaStrong'>${vo.in_title}</strong>
					</div>
					<div class='AqnaContent'>
						<p>
						<c:if test="${not empty vo.in_photo1name }">
                    				 <img src="/EyeMOM/resources/img/${vo.in_photo1name}" class="miri"><br/>
			                     </c:if>
			                     <c:if test="${not empty vo.in_photo2name }">
			                     	<img src="/EyeMOM/resources/img/${vo.in_photo2name}" class="miri"><br/>
			                     </c:if>
			                     <c:if test="${not empty vo.in_photo3name }">
			                     	<img src="/EyeMOM/resources/img/${vo.in_photo3name}" class="miri"><br/>
			                     </c:if>
							${vo.in_content}
						</p>
					</div>
					<span class='AqnaSpan'> <span
						style="float: left; max-width: 130px; margin-right: 7px;">${vo.in_nick}</span>
						<span style="float: left; margin-right: 7px; color: #e2e2e2;">|</span>
						<span style="float: left; max-width: 130px; margin-right: 7px;">${vo.in_date }</span>
						<span style="float: left; margin-right: 7px; color: #e2e2e2;">|</span>
						<span style="float: left; margin-right: 7px; color: #959595;">조회수
							<span style="color: #959595;">${vo.in_count}</span>
					</span> <span style="float: left; margin-right: 7px; color: #e2e2e2;">|</span>
<!-- 						<a style="color: #959595; float: left; text-decoration: none;">신고</a> -->
					</span>
					<div>
						<a href="#qnapopup" id="popupLink"><button class="Aqnabtn">답변하기</button></a>
					</div>
				</div>
			</div>
			<!-- 답변창 -->
			
			<c:choose>
						<c:when test="${empty list }">
						
						</c:when>
						<c:otherwise>
			<div
				style="margin: 50px auto; width: 900px; height:auto; text-align: left;">
				<div class='AqnaAnswer'>
					<h2 class='Aqnah3'>
						답변 <span
							style="display: inline-block; margin-left: 8px; font-weight: 400; font-size: 24px; font-family: tahoma; color: #ffa07a; letter-spacing: 0;">${fn:length(list)} </span>
					</h2>
					<ul style="list-style: none;">
						<li class="AqnaList">
						
						
						
						
							<c:forEach var="i" begin="1" end="${fn:length(list)}" step="1">

							<c:set var="vo" value="${list[i-1]}" />
							<c:set var="replylist" value="${rlist[i-1]}" />
							<div class='AqnaContent'>
								
								<div class='AqnaContent1'>
									<p>${vo.a_content}</p>
								</div>
								<!-- 작성자 정보 -->
								<div class='AqnaInfo'>
									<div class='AqnaUser'>${vo.a_nick}</div>
									<span class='AqnaUserInfo'> 
										<span class='Aqnabar'>|</span>
										<span class='AqnaTime'>${vo.a_date}</span> 
										<a class='AqnaOpinion' id='Opinion' style='text-decoration: none'>의견 
											<span class='AqnaOpinionCnt'>${vo.a_recount}</span>
										</a>
									</span>
								</div>
								
								  
								
								<!-- 답글 -->
								<div class='AqnaComment'>
									<form action="" class='AqnaForm'>
										<div class='AqnaCommentIn'>
											<textarea class='AqnaText' id="ar_content" placeholder="의견을 입력해주세요"></textarea>
										</div>
										<!-- 등록버튼 -->
										<input type="button" class="AqnaAnswerbtn" id="replybtn" value='등록' />
										<input type="hidden" value="${vo.a_no}"/>
									</form>
									<!-- 답급 목록 -->
														<br/>
									<div style="height: auto;">
										<table
											style="margin-top: 50px; border-collapse: collapse; height: auto; width: 68%">
											<c:forEach var='reply' items='${replylist}'>
											<tr>
												<td style="width: 1px;"><input type="hidden" id="ar_no" value="${reply.ar_no}"/></td>
												<td
													style="padding: 13px 13px 13px 10px; border-bottom: 1px solid #e9e9e9;">${reply.ar_content}</td>
												<td
													style="padding: 13px 13px 13px 10px; border-bottom: 1px solid #e9e9e9; font-size: 13px; color: #959595; width: 70px;">${reply.ar_nick}</td>
												<td
													style="padding: 13px 13px 13px 10px; border-bottom: 1px solid #e9e9e9; font-size: 13px; color: #959595; width: 70px;">${reply.ar_date}</td>
												<td
													style="padding: 13px 0 13px 10px; border-bottom: 1px solid #e9e9e9; font-size: 13px; color: #959595; width: 30px;">
													<c:if test="${reply.ar_id==sessionScope.user.getU_id()}" >
													<input type="button" value='x' id="repldelbtn" style="border: 1px solid #e9e9e9; background-color: #fff" />
													</c:if>
												</td>
											</tr> 
											</c:forEach>
										</table>
									</div>
								</div>
							</div>
							</c:forEach>
							
						</li>
					</ul>
				</div>
			</div>
			</c:otherwise>
						</c:choose>
		</div>
	</div>


	<!-- 팝업으로 쓰일 div -->
	<div id="qnapopup" class="white-popup1 mfp-hide">
		<!-- 1:1 상담문의 제목 -->
		<div class='answerdiv'>
			<h1 class='answerh1'>답변 등록</h1>
			<hr class='answerhr' />
			<!-- 입력창 div -->
			<div class='answerinputdiv'>
				<table class='infotable1' style="margin-top: 60px;">
					
					<tr>
						<td class='myfont1' style="width: 10%;">내용</td>
						<td><textarea class='form-control3 answertxt'
								name='q_content' id='a_content'></textarea></td>
					</tr>
				</table>
			</div>
			<!-- 전송버튼 / 취소 버튼 -->
			<div class="answeralign">
				<input type="button" value='전송하기' id='btnfqa'
					class='sbmbtn sbmbtn-primary'> <input type="button"
					value='다시쓰기' class='rebtn' id='rebtn'>
			</div>
		</div>
	</div>
</body>
</html>
