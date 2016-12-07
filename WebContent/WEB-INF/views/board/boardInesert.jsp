<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/boardInsert.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
	<script type="text/javascript">
$(function(){
	
    $("#photo").on('change', function(){
    	fileInfo(this);
    });
});

function fileInfo(f){
	var file = f.files; // files 를 사용하면 파일의 정보를 알 수 있음

	// 파일의 갯수만큼 반복
	for(var i=0; i<file.length; i++){
		var reader = new FileReader(); // FileReader 객체 사용
		reader.onload = function(rst){
			$('#imgs').append('<img src="' + rst.target.result + '" class="miri ">'); // append 메소드를 사용해서 이미지 추가
			// 이미지는 base64 문자열로 추가
			// 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
		}
		reader.readAsDataURL(file[i]); // 파일을 읽는다
	}
}


</script>
<div class='body'>
	<section class="page_head">
		<div align="center" class='divheight'>
			<h2>게시판 등록</h2>
			<form action="#">
				<div style="width: 100%" id="board3">
					<!-- 카테고리 선택칸 -->
					<div class='form-inline'>
						<div>
							<label id='boardlabel2'>카테고리 &nbsp; </label> <select id='cate3'
								class="form-control">
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
							<label id='boardlabel2'>제목 &nbsp; </label> <input type="text"
								class='form-control' id='title3'>
						</div>
					</div>
					<div class='form-inline' style="margin-left: 100px">
						<!-- 파일 첨부 선택칸 -->
						<div>
							<div class='filelabel'>
								<label id='boardlabel2'>사진 첨부&nbsp;</label>
							</div>
							<div class='labelinline3'></div>
							<div class='labelinline3'>
								<!-- 라벨과 테이블 inline -->
								<table
									style="margin-bottom: -20px; margin-left: 45px; display: inline-block;">
									<tr style="padding-left: 100px">
										<td><input type='file' id='photo' name='photo'
											accept=" image/*" multiple="multiple" /></td>
									</tr>
								</table>
							</div>
							<div id='imgs'></div>
						</div>
					</div>
					<div class='texta3'>
						<!-- 내용입력칸 -->
						<textarea class='textaa3' id='content'></textarea>
						<img alt="" src="">
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
								<td><div class='space3'></div></td>
								<!-- 버튼사이 공간 css -->

								<td>
									<div>
										<i class='fa fa-trash'><span><input type='button'
												value='취소하기' class='btn btn-link' id='cancel' /></span></i>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</form>
		</div>
	</section>
</div>
</body>
</html>