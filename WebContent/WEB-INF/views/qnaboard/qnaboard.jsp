<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="css/qnaboard.css">
<script type="text/javascript">
$(function(){
	$('.AqnaComment').hide();
	
	$('#Opinion').click(function(){			
		$('.AqnaComment').stop().slideToggle(200);
	});
});
</script>
</head>
<body>
	<!-- 질문창 -->
	<div style="margin: 50px auto; border: 1px solid #000; width: 900px; height: 400px; text-align: left;">
		<img alt="" class='qnaimg' src="img/qnaQ1.png">
			<div style="float: left; padding: 0 30px; 	">
				<div>
					<strong class='AqnaStrong'>QNA 보드 좀 살려주세요 부탁입니다</strong>
				</div>
				<div class='AqnaContent'>
					<p>
					zzzzzzzzzzzzzzzzzzzzzㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ<br/>
					zzzzzzzzzzzzzzzzzzzzzㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ<br/>
					zzzzzzzzzzzzzzzzzzzzzㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ<br/>
					zzzzzzzzzzzzzzzzzzzzzㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ<br/>
					zzzzzzzzzzzzzzzzzzzzzㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ<br/>
					ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>
				</div>
				<span class='AqnaSpan'>
					<span style="float: left; max-width: 130px; margin-right: 7px;">wamsi98</span>
					<span style="float: left; margin-right: 7px; color: #e2e2e2;">|</span>
					<span style="float: left; max-width: 130px; margin-right: 7px;">2016.12.17</span>
					<span style="float: left; margin-right: 7px; color: #e2e2e2;">|</span>
					<span style="float: left; margin-right: 7px; color: #959595;">조회수 <span style="color: #959595;">45</span></span>
					<span style="float: left; margin-right: 7px; color: #e2e2e2;">|</span>
					<a style="color: #959595; float: left;">신고</a>
				</span>
				<div>
					<button class="Aqnabtn">답변하기</button>
				</div>
			</div>
	</div>
	<!-- 답변창 -->
	<div style="margin: 50px auto;width:900px;  text-align: left;">
		<div class='AqnaAnswer'>
			<h2 class='Aqnah3'>답변 <span style="display: inline-block; margin-left: 8px;  font-weight: 400;  font-size: 24px; font-family: tahoma; color: #ffa07a; letter-spacing: 0;">5</span> </h2>
		<ul style="list-style: none;">
			<li class="AqnaList">
				<div class='AqnaContent'> 
					<div class='AqnaContent1'>
						<p>엌ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ</p>
					</div>
					<!-- 작성자 정보 -->
					<div class='AqnaInfo'>
						<div class='AqnaUser'>wamsi98</div>
						<span class='AqnaUserInfo'>
							<span class='Aqnabar'>|</span>
							<span class='AqnaTime'>2016.12.17</span>
							<a class='AqnaOpinion' id='Opinion'>의견 <span class='AqnaOpinionCnt'>1</span> </a>
						</span>
					</div>
					<!-- 답글 -->
					<div class='AqnaComment'>
						<form action="" class='AqnaForm'>
							<div class='AqnaCommentIn'>
								<textarea class='AqnaText' placeholder="의견을 입력해주세요"></textarea>
							</div>
							<!-- 등록버튼 -->
							<input type="button" class="AqnaAnswerbtn" value='등록'/>				
						</form>
					<!-- 답급 목록 -->
<!-- 					<br/><br/><br/><br/><br/><br/><br/><br/> -->
					<div style="height: auto;">
						<table style="margin-top:30px; border-collapse: collapse; height: auto;">
							<tr>
								<td style="width: 1px;"></td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;">그렇나요?</td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 70px;">wamsi98</td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 70px;">2016.12.17</td>
								<td style="padding: 13px 0 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 30px;"><input type="button" value='x' style="border: 1px solid #e9e9e9; background-color: #fff"/></td>
							</tr>
							<tr>
								<td style="width: 1px;"></td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;">내내용내용내용내용내용내용내용내용내용내용내용내용용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 70px;">wamsi98</td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 70px;">2016.12.17</td>
								<td style="padding: 13px 0 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 30px;"><input type="button" value='x' style="border: 1px solid #e9e9e9; background-color: #fff"/></td>
							</tr>
							<tr>
								<td style="width: 1px;"></td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;">내내용내용내용내용내용내용내용내용내용내용내용내용용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 70px;">wamsi98</td>
								<td style="padding: 13px 13px 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 70px;">2016.12.17</td>
								<td style="padding: 13px 0 13px 10px;border-bottom: 1px solid #e9e9e9;font-size: 13px;color: #959595; width: 30px;"><input type="button" value='x' style="border: 1px solid #e9e9e9; background-color: #fff"/></td>
							</tr>
						</table>
					</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	</div>
</body>
</html>
