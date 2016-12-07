<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/style.css">


<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
  <div class="body">
	<div style="text-align: center;">
		<div class='bottom1'>
			<div id="board1" style="width: 74%">
				<div class='form-inline' style="width:700px; position: relative; left:195px; margin-bottom:30px;">
							<label class='boardlabel' style="position: relative; right: 55%">${title} </label> <select id='select1'
								class="form-control">
								<option>게시판종류</option>
								<option>게시판종류</option>
								<option>게시판종류</option>
								<option>게시판종류</option>
								<option>게시판종류</option>
							</select>
							<input type="text" name='search1' id='search1'
								class='form-control'> <input type="button"
								name='searchbtn' id='searchbtn1' class='btn' value='검색'>
							<!-- 검색버튼 -->
				</div>
				<table class='boardtable'>
					<tr id="title1">
						<!-- for문 입장 -->
						<td class='boardtd' id='boardtdtitle'>제목</td>
						<!-- 게시판  -->
						<td class='boardtd'>작성자</td>
						<td class='boardtd'>작성일</td>
						<td class='boardtd'>조회수</td>
					</tr>

					<tr style="font-size: 9pt">
						<td class='boardtd'><a href="#">제희 힘내라</a></td>
						<!-- 게시판내용 -->
						<td class='boardtd'>임경민</td>
						<td class='boardtd'>2016.12.01</td>
						<td class='boardtd'>9999</td>
					</tr>

				</table>
			</div>
			<div class='space1'></div>
			<div class='form-inline'>
					<ul class="pagination modal-1">
						<li><a href="#" class="prev">&laquo;</a></li>
						<li><a href="#" class="active">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">6</a></li>
						<li><a href="#">7</a></li>
						<li><a href="#">8</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#">9</a></li>
						<li><a href="#" class="next">&raquo;</a></li>
					</ul>
					<input type="button" value='글쓰기' class='btn writebtn' style="margin-bottom: 25px;position: relative;left: 215px"/>
			</div>
			<script
				src='http://codepen.io/fbrz/pen/9a3e4ee2ef6dfd479ad33a2c85146fc1.js'></script>
		</div>
	</div>
	</div>
</body>
</html>