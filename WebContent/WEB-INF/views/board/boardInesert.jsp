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
<link rel="stylesheet" href="css/boardInsert.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>

<body>
	
	<section class="page_head">
		<div align="center" style="line-height: 50px">
			<h1>게시판 등록</h1>
			<form action="#">
				<div style="width: 100%" id="board3">
					<!-- 카테고리 선택칸 -->
					<div class='form-inline'>
						<div>
							<label>카테고리 &nbsp </label> <select id='cate3' class="form-control">
								<option>카테고리</option>
								<option>카테고리</option>
								<option>카테고리</option>
								<option>카테고리</option>
								<option>카테고리</option>
							</select>
						</div>
					</div>
					<div class='form-inline'>
						<!-- 제목 입력칸 -->
						<div>
							<label>제목 &nbsp </label> <input type="text" id='title3'
								class='form-control'>
						</div>
					</div>
					<div class='form-inline' style="margin-left: 100px">
						<!-- 파일 첨부 선택칸 -->
						<div>
							<div style="margin-left: -39%; display: inline;">
								<label>파일 첨부&nbsp;</label>
							</div>
							<div class='labelinline3'></div>
							<div class='labelinline3'>
								<!-- 라벨과 테이블 inline -->
								<table
									style="margin-bottom: -20px; margin-left: 45px; display: inline-block;">
									<tr style="padding-left: 100px">
										<td><i class='fa fa-image'>&nbsp;&nbsp;&nbsp;</i></td>
										<td><label for='fileup' class='fileup'>&nbsp;사진
												&nbsp;</label>&nbsp;&nbsp;</td>
										<td><input type='file' id='photo' /></td>

										<td><i class='fa fa-file-video-o'>&nbsp;&nbsp;&nbsp;</i></td>
										<td><label for='fileup' class='fileup'>&nbsp;동영상
												&nbsp;</label>&nbsp;&nbsp;</td>
										<td><input type='file' id='video' /></td>

										<td><i class='fa fa-file'>&nbsp;&nbsp;&nbsp;</i></td>
										<td><label for='fileup' class='fileup'>&nbsp;파일&nbsp;</label></td>
										<td><input type='file' id='file' /></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<div class='texta3'>
						<!-- 내용입력칸 -->
						<textarea class='textaa3' id='content'></textarea>
					</div>
					<div style='margin-left: 570px'>
						<table>
							<tr>
								<td>
									<div>
										<i class='fa fa-check-circle'><span><input
												type='submit' value='등록하기' class='btn btn-link' id='btn'></input></span></i>
									</div>
								</td>
								<td><div class='space3'></div></td>		<!-- 버튼사이 공간 css -->
								
								<td>
									<div >
										<i class='fa fa-trash'><span><input type='button' value='취소하기' class='btn btn-link' id='cancel'/></span></i>
									</div>
								</td>										
							</tr>
						</table>
					</div>
				</div>
			</form>
		</div>
	</section>

</body>
</html>