<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/style.css">

<script type="text/javascript">

</script>

</head>    
<body>
  <div class="body">
	<div style="text-align: center;">
		<div class='bottom1'>
			<!-- 게시판 카테고리 -->
			<div id="board1" style="width: 78%">
				<label class='boardlabel titlelabel' id="lb">공지사항</label> 
				<!-- 검색 -->
				<div class='form-inline selectlabel'>
							<!-- 검색 셀렉트 박스 -->
							<select id='select1'
								class="form-control">
								<option>제목</option>
								<option>내용</option>
							</select>
							<!-- 검색창 -->
							<input type="text" name='search1' id='search1'
								class='form-control'> 
							<!-- 검색버튼 -->
							<input type="button"
								name='searchbtn1' id='searchbtn1' class='btn' value='검색'>
				</div>
				<!-- 게시판 -->
				<table class='boardtable'>
					<tr id="title1">
						<td class='boardtd' id='boardtdtitle'>제목</td>
						<!-- 게시판  -->
						<td class="boardtd">작성자</td>
						<td class='boardtd'>작성일</td>
						<td class='boardtd'>조회수</td>
					</tr>
			<c:forEach var='vo' items='${list}'>
					<tr>
						<!-- 제목 -->
						<td class='boardtd'>
						<c:choose>
						<c:when test="${empty sessionScope.user}">
							<a href="#test-popup" class="open-popup-link">
								${vo.b_title }
							</a>
						</c:when>	
						<c:otherwise>	<!-- 세선정보가 있을경우 사용자 정보 show -->
							<a href="noticeview.do?b_no=${vo.b_no }">${vo.b_title }
							</a>
						</c:otherwise>	
						</c:choose>
							<!-- 게시글 댓글 수  -->
							<label>&nbsp;[${vo.b_recount}]</label>	
						</td>
						<!-- 작성자 -->
						<td class='boardtd'>${vo.b_nick }</td>
						<!-- 작성일 -->
						<td class='boardtd'>${vo.b_date }</td>
						<!-- 조회수 -->
						<td class='boardtd'>${vo.b_count }</td>
					</tr>
			</c:forEach>
				</table>
			</div>
			<!-- 게시판 사이 공간 -->
			<div class='space1'></div>
			<!-- 페이징 -->
			<div class='form-inline'>
					<ul class="pagination modal-1">
						<!-- 뒤로가기 버튼 -->
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
						<!-- 앞으로 가기 버튼 -->
						<li><a href="#" class="next">&raquo;</a></li>
					</ul>
			</div>
			<script
				src='http://codepen.io/fbrz/pen/9a3e4ee2ef6dfd479ad33a2c85146fc1.js'></script>
		</div>
	</div>
	</div>
</body>
</html>