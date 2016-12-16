<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inline popup</title>
<link rel="stylesheet" href="resources/css/faqboard.css">
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css'>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
<script type="text/javascript">
	$(function() {

		//      팝업 띄우기 위한 쿼리
		$('#popupLink').magnificPopup({
			type : 'inline',
			midClick : true
		// allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
		});

	})
</script>
<style type="text/css">
</style>
</head>

<body>
	<div class='body'>
		<!-- 팝업으로 쓰일 div의 아이디를 링크&& 아이디 지정 -->
		<a href="#qnapopup" id="popupLink">A링크 팝업 띄우기</a>


		<!-- 팝업으로 쓰일 div -->
		<form action="passfaq.do" method="post">
			<div id="qnapopup" class="white-popup1 mfp-hide">
				<!-- 1:1 상담문의 제목 --> 
				<div class='answerdiv'>
					<h1 class='answerh1'>1:1 상담문의</h1>
					<hr class='answerhr' />
				<!-- 입력창 div -->
					<div class='answerinputdiv'>
						<table class='infotable1'>
							<tr height="70px;">
								<td class='myfont1' class='answertr'>제목</td>
								<td class='answertd'><input type='text' class='form-control2 pagealign1 answerinput'  value='' id='q_title' placeholder="제목"/></td>
							</tr>
							<tr>
								<td class='myfont1' style="width: 10%;">내용</td>
								<td><textarea class='form-control3 answertxt' id='q_content'></textarea></td>
							</tr>
						</table>
					</div>
					<!-- 전송버튼 / 취소 버튼 -->
					<div class="answeralign">
						<input type="submit" value='전송하기' class='sbmbtn sbmbtn-primary'>
						<input type="button" value='다시쓰기' class='rebtn '>
					</div>
				</div>
			</div>
		</form>
	</div>
</html>