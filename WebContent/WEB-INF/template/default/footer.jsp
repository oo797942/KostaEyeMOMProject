<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="/EyeMOM/resources/css/footer.css" rel="stylesheet"	type="text/css" />
<div class="footer">
	<hr color="#ffa07a" size="3px" />
	<table border="0" cellspacing="0" width="100%" id="footerTable">
		<tr>
			<td width="25%">
				<p class="footerTitle">About</p>
				<br />
				<p class="footerText">
					아이맘에 오신것을 환영합니다.<br /> 저희 아이맘은 부모님들끼리의 소통과 아이들의 즐거운 생활을 위해 항상 힘쓰고
					있습니다.<br />
					<br /> 자주 이용해주세요.
				</p>
			</td>
			<td width="25%">
				<p class="footerTitle">Information</p>
				<br />
				<p class="footerText">
					<a href="#">사이트 소개</a><br /> <a href="#">이용약관</a><br /> <a href="#">개인정보
						취급방침</a><br /> <a href="#">이메일 무단수집거부</a><br /> <a href="#">이용안내</a><br />
					<a href="#">문의하기</a><br />
				</p>
			</td>
			<td width="25%">
				<p class="footerTitle">Customer Service</p>
				<br />
				<p class="footerText">
					<a href="#">공지사항</a><br />
					<a href="#">문의하기</a><br />
					<a href="#">신고하기</a><br />
					<a href="#">FAQ</a><br />
				</p>
			</td>
			<td width="25%">
				<p class="footerTitle">Statistics</p>
				<br />
				<p class="footerText">
					<span class="lft">오늘 방문수</span> <span class="rht">
					<fmt:formatNumber value="${sessionScope.todayCount }" pattern="#,###.##"/>
					</span><br />
					<span class="lft">최대 방문수</span> <span class="rht">
					<fmt:formatNumber value="${sessionScope.maxCount }" pattern="#,###.##"/>
					</span><br />
					<span class="lft">전체 방문수</span> <span class="rht">
					<fmt:formatNumber value="${sessionScope.allCount }" pattern="#,###.##"/>
					</span><br />
					<span class="lft">전체 회원수</span> <span class="rht">
					<fmt:formatNumber value="${sessionScope.allmember }" pattern="#,###.##"/>
					</span><br />
					<span class="lft">전체 게시물</span> <span class="rht">
					<fmt:formatNumber value="${sessionScope.boardcount }" pattern="#,###.##"/>
					</span>
				</p>
			</td>
		</tr>
	</table>
	<hr color="#ffa07a" size="3px" />
	<p class="footerInfo" id="footerInfo">
		<b>회사명</b> J'sQuery(아이맘) <b>주소</b> 경기도 성남시 어딘가 314-2 <b>대표</b> 이제희 <b>전화</b>
		010-1234-5678<br /> Copyright ⓒ 2016 J'sQuery(아이맘). All Rights
		Reserved.
	</p>
</div>
