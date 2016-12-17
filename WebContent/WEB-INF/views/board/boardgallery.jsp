<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/reset.css" >
<link rel="stylesheet" href="resources/css/ie.css" >
<link rel="stylesheet" href="resources/css/grid.css" >


<!-- <script type="text/javascript" src="resources/js/jquery-3.1.1.js"></script> -->
<!-- <script type="text/javascript"> -->

<!-- </script> -->
</head>
<body class='Tbody' id="page4">
	<div class="body">
		<section class="content portfolio small-images">
			<div class="main">
		<div class="box">
			<div class="padding">
				<div class="container_12">
					<div class="wrapper">
						<div class="grid_12">
							<div class="indent-left p2">
								<h3 class="Th3 p0">${title}</h3>
							</div>
							<div class="wrapper p4">
							<c:forEach var="i" begin="1" end="${fn:length(list)}" step="1">

 								<c:set var="vo" value = "${list[i-1]}" />
								
<!-- 									카테고리별 분류 -->
								<c:if test="${vo.b_scate=='r_1'}">
									<c:set var="cate" value = "[초기]" />
								</c:if>
								<c:if test="${vo.b_scate=='r_2'}">
									<c:set var="cate" value = "[중기]" />
								</c:if >
								<c:if test="${vo.b_scate=='r_3'}">
									<c:set var="cate" value = "[후기]" />
								</c:if>
								<c:if test="${vo.b_scate=='r_4'}">
									<c:set var="cate" value = "[완료기]" />
								</c:if>
						<c:choose>
						<c:when test="${empty sessionScope.user}">
							<a href="#test-popup" class="open-popup-link">
							
							
						</c:when>	
						<c:otherwise>	<!-- 세선정보가 있을경우 사용자 정보 show -->
							<a href="boardview.do?b_no=${vo.b_no}">
						
						</c:otherwise>	
						</c:choose>
								
								<c:choose>
								<c:when test="${ i mod 3 ==1}">
								<article class="Tarticle grid_4 alpha">
								<div class="indent-left">
								<figure class="frame2 p2">
											<img src="/EyeMOM/resources/img/${vo.b_photo1name}" alt="" class='Timg'/>
										</figure>
										<p class="Tp color-4 prev-indent-bot">${cate} ${vo.b_title} (${vo.b_recount})</p>
										<p class='Tp1'>
										<label>추천수</label> <label>${vo.b_good}</label> &nbsp;&nbsp;&nbsp;
										<label>조회수</label><label>${vo.b_count}</label>&nbsp;&nbsp;&nbsp;
										${vo.b_date}
										<br/>
										<label>${vo.b_nick}</label>
										</p>
									</div>
								</article>
								</c:when>
								
								<c:when test="${i mod 3 ==0}">
								<article class="Tarticle grid_4 omega">
								
								<div class="indent-right">
								<figure class="frame2 p2">
											<img src="/EyeMOM/resources/img/${vo.b_photo1name}" alt="" class='Timg'/>
										</figure>
										<p class="Tp color-4 prev-indent-bot">${cate} ${vo.b_title} (${vo.b_recount})</p>
										<p class='Tp1'>
										<label>추천수</label> <label>${vo.b_good}</label> &nbsp;&nbsp;&nbsp;
										<label>조회수</label><label>${vo.b_count}</label>&nbsp;&nbsp;&nbsp;
										${vo.b_date}
										<br/>
										<label>${vo.b_nick}</label>
										</p>
									</div>
									
								</article>
								</c:when>
								
								<c:when test="${i mod 3 ==2}">
								<article class="Tarticle grid_4">
								<div class="indent3">
								<figure class="frame2 p2">
											<img src="/EyeMOM/resources/img/${vo.b_photo1name}" alt="" class='Timg'/>
										</figure>
										<p class="Tp color-4 prev-indent-bot">${cate} ${vo.b_title} (${vo.b_recount})</p>
										<p class='Tp1'>
										<label>추천수</label> <label>${vo.b_good}</label> &nbsp;&nbsp;&nbsp;
										<label>조회수</label><label>${vo.b_count}</label>&nbsp;&nbsp;&nbsp;
										${vo.b_date}
										<br/>
										<label>${vo.b_nick}</label>
										</p>
									</div>
								
								</article>
								</c:when>
								
								</c:choose>
								</a>
								<c:remove var="cate"/>
							</c:forEach>
								
							</div>
						</div>
					</div>
				</div> 
			</div>
		</div>
	</div>
	
	<div>
		<input type="button" value='글쓰기'/>	
	</div>
		</section>
		<!--end wrapper-->
		</div>
	
</body>
</html>