<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/styleFlash.css" media="screen" data-name="skins">
<!-- <link rel="stylesheet" href="resources/css/style.css"> -->
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/ie.css">
<link rel="stylesheet" href="resources/css/grid.css">
<link rel="stylesheet" href="resources/css/style.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
a:link {	
	color: black;
	text-decoration: none;
}

a:visited {
	color: black;
	text-decoration: none;
}

a:hover {
	color: blue;
	text-decoration: underline;
}

#searchArea {
	text-align: center;
}

#itemName {
	background-color: white;
}
.title{
    font-size: 17pt;
    font-weight: bolder;
}
</style>
<!-- <script type="text/javascript" src="./js/jquery-3.1.1.js"></script> -->
<script type="text/javascript">
	$(function() {
	});
	function fn_movePage(val){
	    jQuery("input[name=pageNo]").val(val);
	    jQuery("form[name=frm]").attr("method", "post");
	    jQuery("form[name=frm]").attr("action","flashBoard.do").submit();
	}
	</script>
</head>
<body>
	<div class="body">
	<section class="content portfolio small-images">
			<form name="frm">
    		<input type="hidden" name="pageNo" />
			<div class="main">
				<div class="box">
					<div class="padding">
						<div class="container_12">
							<div class="wrapper">
								<div class="grid_12">
									<div class="indent-left p2">
										<h3 class="Th3 p0">
										놀아 봐요
										</h3>
									</div>
									<div class="wrapper p4">
										<c:forEach var="i" begin="1" end="${fn:length(list)}" step="1">

											<c:set var="vo" value="${list[i-1]}" />

											<c:choose>
												<c:when test="${empty sessionScope.user}">
													<a href="#test-popup" class="open-popup-link">
												</c:when>
												<c:otherwise>
													<!-- 세선정보가 있을경우 사용자 정보 show -->
											<a 
										onclick="window.open('flashBoardView.go?g_no=${vo.g_no}', '${vo.g_title}',
                   				'width=1050,height=690');return false;">
												</c:otherwise>
											</c:choose>


													<article class="Tarticle grid_4 alpha">
														<div class="indent-left">
															<figure class="frame2 p2">
																<img src="/EyeMOM/resources/img/${vo.g_photo}"
																	alt="" class='Timg' />
															</figure>
															<p class="Tp color-4 prev-indent-bot">
																${vo.g_title} </p>
															<p class='Tp1'>
																<label>추천수</label> <label>${vo.g_good}</label>
																&nbsp;&nbsp;&nbsp; <label>조회수</label><label>${vo.g_count}</label>&nbsp;&nbsp;&nbsp;
																
															</p>
														</div>
													</article>



											</a>
										</c:forEach>

									</div>
								</div>
							</div>
						</div>
					</div>

						<!-- 페이징 -->
						<div class='pagingDiv'>
							<ul class="pagination modal-1">
								<c:if test="${pageVO.pageNo != 0}">
									<c:if test="${pageVO.pageNo > pageVO.pageBlock}">
										<li><a
											href="javascript:fn_movePage(${pageVO.firstPageNo})"
											style="text-decoration: none;">[첫 페이지]</a></li>
									</c:if>
									<c:if test="${pageVO.pageNo != 1}">
										<li><a
											href="javascript:fn_movePage(${pageVO.prevPageNo})"
											style="text-decoration: none;">[이전]</a></li>
									</c:if>
									<span> <c:forEach var="i" begin="${pageVO.startPageNo}"
											end="${pageVO.endPageNo}" step="1">
											<c:choose>
												<c:when test="${i eq pageVO.pageNo}">
													<li><a href="javascript:fn_movePage(${i})"
														style="text-decoration: none;" class="active"> <font
															style="font-weight: bold;">${i}</font>
													</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="javascript:fn_movePage(${i})"
														style="text-decoration: none;">${i}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</span>
									<c:if test="${pageVO.pageNo != pageVO.finalPageNo }">
										<li><a
											href="javascript:fn_movePage(${pageVO.nextPageNo})"
											style="text-decoration: none;">[다음]</a></li>
									</c:if>
									<c:if test="${pageVO.endPageNo < pageVO.finalPageNo }">
										<li><a
											href="javascript:fn_movePage(${pageVO.finalPageNo})"
											style="text-decoration: none;">[마지막 페이지]</a></li>
									</c:if>
								</c:if>
							</ul>
							<c:choose>
		 						<c:when test="${empty sessionScope.user}">
									<!-- 글쓰기 버튼 -->
									<a href="#test-popup" class="open-popup-link"> <input
										type="button" value='글쓰기' class='writebtn'/>
									</a>
								</c:when>
								<c:otherwise>  
									<!-- 세선정보가 있을경우 사용자 정보 show -->
									<input type="button" onclick='writeBoard()' value='글쓰기' class='writebtn'/>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
			</div>
		</form>
		</section>
		<!--end wrapper-->
		</div>
		
</body>
</html>