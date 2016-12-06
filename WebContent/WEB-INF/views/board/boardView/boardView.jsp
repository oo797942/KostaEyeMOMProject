<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/boardView.css">
</head>
<body>

	<section class="page_head">
		<br />

		<div class="container theme-showcase" role="main"  style="margin-bottom: 90px">
			<div align="center">
				<h1>게시판</h1>
				<br />
				<div id='tableall'>	 <!-- 테이블 전에 div -->
					<table class='table table-striped' >
						<tr id='trcolor'>
							<th colspan="10" width="75%"><label id='title'>이제희 하스트톤 그만해라</label></th>
							<th><label id='cate'>신고게시판</label></th>
						</tr>
						<tr id='trcolor'>
							<th colspan="10"><label id='id'>임경민</label></th>
							<th><label id='date'>2016.12.02</label></th>
						</tr>
						<tr id='trcolor'>
							<td colspan="11" height="300px" id='content'>
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라</td>
						</tr>
					</table>
					
					<!-- 테이블과 테이블 사이 간격  -->
					<div class='space'></div>
					
					<!-- 조회수, 추천수, 신고수 -->	
					<div class='form-inline'>
						<div id='inline'>
							<table style="margin-left: -350px">
								<tr>
									<th><label>조회수 : </label></th>
									<th><label id='count'>&nbsp 5 </label></th>
								</tr>
							</table>
						</div>
						<div id='inline'>
							<table style="margin-left: -250px">
								<tr>
									<th><label>추천수 </label></th>
									<th><label id='good'>&nbsp 5 </label></th>
								</tr>
							</table>
						</div>
						<div id='inline'>
							<table style="margin-left: -150px">
								<tr>
									<th><label>신고수 </label></th>
									<th><label id='report'>&nbsp 5 </label></th>
									</tr>
								</table>
						</div>
					</div>
<!-- 					<hr style="border: solid 1px white;"> 	게시글과 댓글창 구분 선 -->
					
					<div id='comment'>				<!-- 댓글창 -->	
						<div>
							<ul>
								<li>		<!-- for문을 돌려야할듯 -->
									<div>
										<table id='tablewidth'>
											<tr style="height: 70px;">
												<th width="70px">wamsi98</th>
												<td>2016-12-05</td>
											</tr>
											<tr>
												<td colspan="2">ㅇㅁ노ㅕㅣ온며욈냐뢤ㄴ론미ㅗ래멸</td>											
											</tr>
											<tr>
												<td>
													<hr style="border: solid 1px #d7d7d7; width: 1000%">
												</td>
											</tr>
										</table>
									</div>
								</li>			
							</ul>
						</div>
						<div>
							<ul>
								<li>		<!-- for문을 돌려야할듯 -->
									<div>
										<table id='tablewidth'>
											<tr style="height: 53px;">
												<th width="70px">wamsi98</th>
												<td>2016-12-05</td>
											</tr>
											<tr>
												<td colspan="2">ㅇㅁ노ㅕㅣ온며욈냐뢤ㄴ론미ㅗ래멸</td>											
											</tr>
											<tr>
												<td>
													<hr style="border: solid 1px #d7d7d7; width: 1000%">
												</td>
											</tr>
										</table>
									</div>
								</li>			
							</ul>
						</div>
						
						<div>				<!-- 댓글 입력창 -->
							<table class='inputco'>
								<tbody>
									<tr>
										<td class='i1'>
											<div class='texta'>
												<textarea rows="2" cols="50" style="overflow: hidden; line-height: 14px; height: 61px" class='textaa'></textarea>
											</div>
										</td>
										<td class='i2'>
											<div class='submitbtn'>
												<a href='#'>등록</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>	
			</div>
		</div>
	</section>

</body>
</html>