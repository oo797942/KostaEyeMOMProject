<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="body">

	<header>

		<table id="mainTopTable" cellspacing="0" border="1">
			<tr>
				<td rowspan="2">
				<input type="text">
				<img src="/EyeMOM/resources/img/scope.png" class="SearchBtn">
				</td>
				<td rowspan="2">로고</td>
				<td>즐겨찾기 북마크</td>
			</tr>
			<tr>
				<td>로그인 등등</td>
			</tr>
			<tr>
				<td colspan="3" id="mainTopMenuBar">메뉴바</td>
			</tr>
			<tr>
				<td colspan="3" id="mainTopMenuImg">사진</td>
			</tr>
		</table>

	</header>
	<section>섹션섹션</section>
	<footer>
		<jsp:include page="../template/default/footer.jsp" />
	</footer>

</div>
