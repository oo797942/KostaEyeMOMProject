<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body class='boardbody'>
	<div class='bottom1'>
	<div style="width: 65%" id="board1">
		<div class='form-inline'>
			<div class='boardinline'>
				<label class='boardlabel'>게시판종류 </label> <select id='select1'
					class="form-control">
					<option>게시판종류</option>
					<option>게시판종류</option>
					<option>게시판종류</option>
					<option>게시판종류</option>
					<option>게시판종류</option>
				</select>
			</div>
			<div id='kind1' class='boardinline'>
				<label class='boardlabel'>검색</label> <input type="text"
					name='search' id='search1' class='form-control'> <input
					type="button" name='searchbtn' id='searchbtn1' class='btn'
					value='검색'>
			</div>
		</div>
		<table class='boardtable'>
			<tr id="title1">
				<!-- for문 입장 -->
				<td class='boardtd'>제목</td>
				<td class='boardtd'>작성자</td>
				<td class='boardtd'>추천수</td>
				<td class='boardtd'>조회수</td>
				<td class='boardtd'>신고수</td>
				<td class='boardtd'>작성일</td>
				<td class='boardtd'>게시판 분류</td>
			</tr>

			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
			<tr>
				<td class='boardtd'><a href="#">제희 리폿좀</a></td>
				<td class='boardtd'>임경민</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>9999</td>
				<td class='boardtd'>0</td>
				<td class='boardtd'>2016.12.01</td>
				<td class='boardtd'>신고게시판</td>
			</tr>
		</table>
	</div>
	<div style="height: 25px"></div>
	<div class='form-inline'>
		<div>
			<input type="button" value='글쓰기' class='btn writebtn' />
		</div>
		<div style="display: inline-block;">
			<ul class="pagination modal-1 boardinline">
				<li><a href="#" class="prev">&laquo</a></li>
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
		</div>
	</div>
	</div>
	<script
		src='http://codepen.io/fbrz/pen/9a3e4ee2ef6dfd479ad33a2c85146fc1.js'></script>
</body>
</html>