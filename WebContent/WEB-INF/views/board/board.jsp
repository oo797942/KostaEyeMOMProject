<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/style.css">

<script type="text/javascript">
	
	function writeBoard(){
// 		var num = $('#num').text();	
// 		alert(num);
		var lb = $("#lb").text();
		alert(lb);
		location.href = "boardInsert.do?keyword=${title}";
			
	}
</script>

</head>
<body>
  <div class="body">
	<div style="text-align: center;">
		<div class='bottom1'>
			<div id="board1" style="width: 74%">
			<c:if test="${title=='tip'}">
				<label class='boardlabel titlelabel' id="lb">육아꿀팁</label> 
			</c:if>
			<c:if test="${title=='qna_board'}">
				<label class='boardlabel titlelabel' id="lb">묻고 말하기</label> 
			</c:if>
			<c:if test="${title=='kid_sick'}">
				<label class='boardlabel titlelabel' id="lb">아이가 아파요</label> 
			</c:if>
			<c:if test="${title=='rice'}">
				<label class='boardlabel titlelabel' id="lb">아이의 식단</label> 
			</c:if>
			<c:if test="${title=='baby'}">
				<label class='boardlabel titlelabel' id="lb">아이자랑</label> 
			</c:if>
				<div class='form-inline selectlabel'>
							<select id='select1'
								class="form-control">
								<option>제목</option>
								<option>작성자</option>
							</select>
							<input type="text" name='search1' id='search1'
								class='form-control'> <input type="button"
								name='searchbtn1' id='searchbtn1' class='btn' value='검색'>
							<!-- 검색버튼 -->
				</div>
				<table class='boardtable'>
					<tr id="title1">
						<!-- for문 입장 -->
						<td class='boardtd' >글번호</td>
						<td class='boardtd' id='boardtdtitle'>제목</td>
						<!-- 게시판  -->
						<td class='boardtd'>작성자</td>
						<td class='boardtd'>작성일</td>
						<td class='boardtd'>조회수</td>
					</tr>
			<c:forEach var='vo' items='${list}'>
					<tr>
						<td class='boardtd' id='num' >${vo.b_no }</td>
						<td class='boardtd'><a href="#">${vo.b_title }</a></td>
						<td class='boardtd'>${vo.b_nick }</td>
						<td class='boardtd'>${vo.b_date }</td>
						<td class='boardtd'>${vo.b_count }</td>
					</tr>
			</c:forEach>
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
					<input type="button"  onclick='writeBoard()' value='글쓰기' class='btn writebtn writelabel' style="margin-bottom: 25px;position: relative;left: 215px"/>
			</div>
			<script
				src='http://codepen.io/fbrz/pen/9a3e4ee2ef6dfd479ad33a2c85146fc1.js'></script>
		</div>
	</div>
	</div>
</body>
</html>