<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/EyeMOM/resources/css/boardView.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
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
					<table class='boardtable'>   <!-- 테이블 전체 div -->
						<tr id='trcolor2'>
							<th colspan="1"><label>123</label></th>
							<th colspan="9" class='boardtd1'><label id='title'>이제희 하스트톤 그만해라</label></th>
							<th class='boardtd2'><label id='cate'>신고게시판</label></th>
						</tr>
						<tr id='trcolor2'>
							<th colspan="10"	 class='boardtd1'><label id='id'>임경민</label></th>
							<th class='boardtd2'><label id='date'>2016.12.02</label></th>
						</tr>
						<!-- 조회수, 추천수, 신고수 -->	
						<tr id='trcolor2'>
							<th colspan="4"></th>
								<th class='countfont' width="20px">조회수&nbsp;&nbsp;:</th>
								<th  class='countfont alignleft'id='count'>10000</th>
								<th width="20px"></th>
								<th width="20px"></th>
								<th class='countfont'width="20px">추천수&nbsp;&nbsp;:</th>
								<th class='countfont alignleft' id='good'>10000</th>
							<td><p class='boardip' id='ip'>192.168.*.*</p></td>
						</tr>
						<tr id='trcolor2'>
							<td colspan="11" height="500px" valign="top"id='content2'>
							<p style="margin-top: 15px">
<!-- 							<img alt="이미지가 올라갈 영역임" src="#" border="2"> -->
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라
							휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라 휴대폰 꺠져라
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
											<tr style="height: 70px;">
												<th width="70px">wamsi98</th>
												<td>2016-12-05</td>
											</tr>
											<tr>
												<td colspan="2">ㅇㅈ 빨리 좀 깨져라</td>	
											</tr>
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
												<textarea rows="2" cols="50" style="overflow: hidden; line-height: 14px; height: 61px" class='textaa2'></textarea>
											</div>
										</td>
										<td class='i2'>
											<div class='submitbtn2'>
												<a href='#' class='submita' style="" >등록</a>
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
</div>
</body>
</html>