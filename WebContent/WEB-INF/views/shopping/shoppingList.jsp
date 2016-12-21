<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/ie.css">
<link rel="stylesheet" href="resources/css/grid.css">
<link rel="stylesheet" href="resources/css/style.css">



<script type="text/javascript">
function fn_movePage(val){
    jQuery("input[name=pageNo]").val(val);
    jQuery("form[name=frm]").attr("method", "post");
    jQuery("form[name=frm]").attr("action","gal.do?title=${title}").submit();
}


</script>
</head>
<body class='Tbody' id="page4">
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
										 공동구매
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
													<a href="shoppingView.do?b_no=${vo.b_no}">
												</c:otherwise>
											</c:choose>

											<c:choose>
												<c:when test="${ i mod 3 ==1}">
													<article class="Tarticle grid_4 alpha">
														<div class="indent-left">
															<figure class="frame2 p2">
																<img src="/EyeMOM/resources/img/${vo.we_photo1name}"
																	alt="" class='Timg' />
															</figure>
															<p class="Tp color-4 prev-indent-bot">
															[ vo.we_end 마감 ]${vo.we_title}</p>
															<p class='Tp1'>
																<label>수량</label> &nbsp;<label>(${vo.we_sold} / ${vo.we_maxsold})</label>
																&nbsp;&nbsp;&nbsp; 
																<br /> 
																<label>가격</label>&nbsp;<label>${vo.we_price}</label>
															</p>
														</div>
													</article>
												</c:when>

												<c:when test="${i mod 3 ==0}">
													<article class="Tarticle grid_4 omega">

														<div class="indent-right">
															<figure class="frame2 p2">
																<img src="/EyeMOM/resources/img/${vo.we_photo1name}"
																	alt="" class='Timg' />
															</figure>
															<p class="Tp color-4 prev-indent-bot">
															[ vo.we_end 마감 ]${vo.we_title}</p>
															<p class='Tp1'>
																<label>수량</label> &nbsp;<label>(${vo.we_sold} / ${vo.we_maxsold})</label>
																&nbsp;&nbsp;&nbsp; 
																<br /> 
																<label>가격</label>&nbsp;<label>${vo.we_price}</label>
															</p>
														</div>

													</article>
												</c:when>

												<c:when test="${i mod 3 ==2}">
													<article class="Tarticle grid_4">
														<div class="indent3">
															<figure class="frame2 p2">
																<img src="/EyeMOM/resources/img/${vo.we_photo1name}"
																	alt="" class='Timg' />
															</figure>
															<p class="Tp color-4 prev-indent-bot">
															[ vo.we_end 마감 ]${vo.we_title}</p>
															<p class='Tp1'>
																<label>수량</label> &nbsp;<label>(${vo.we_sold} / ${vo.we_maxsold})</label>
																&nbsp;&nbsp;&nbsp; 
																<br /> 
																<label>가격</label>&nbsp;<label>${vo.we_price}</label>
															</p>
														</div>

													</article>
												</c:when>

											</c:choose>
											</a>
											
										</c:forEach>

									</div>
								</div>
							</div>
						</div>
					</div>
 
					<!-- 페이징 -->
					<div class='form-inline'>
					<ul class="pagination modal-1">

    <c:if test="${pageVO.pageNo != 0}">
        <c:if test="${pageVO.pageNo > pageVO.pageBlock}">
            <li><a href="javascript:fn_movePage(${pageVO.firstPageNo})" style="text-decoration: none;">[첫 페이지]</a></li>
       </c:if>
       <c:if test="${pageVO.pageNo != 1}">
           <li><a href="javascript:fn_movePage(${pageVO.prevPageNo})" style="text-decoration: none;">[이전]</a></li>
        </c:if>
        <span>
            <c:forEach var="i" begin="${pageVO.startPageNo}" end="${pageVO.endPageNo}" step="1">
                <c:choose>
                    <c:when test="${i eq pageVO.pageNo}">
                       <li > <a href="javascript:fn_movePage(${i})" style="text-decoration: none;"  class="active">
                            <font style="font-weight: bold;">${i}</font>
                        </a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="javascript:fn_movePage(${i})" style="text-decoration: none;">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </span>
        <c:if test="${pageVO.pageNo != pageVO.finalPageNo }">
            <li><a href="javascript:fn_movePage(${pageVO.nextPageNo})" style="text-decoration: none;">[다음]</a></li>
        </c:if>
        <c:if test="${pageVO.endPageNo < pageVO.finalPageNo }">
            <li><a href="javascript:fn_movePage(${pageVO.finalPageNo})" style="text-decoration: none;">[마지막 페이지]</a></li>
        </c:if>
    </c:if>
    				</ul>
    </div>
					<div style="width: 1200px; height: 75px;">
						
					
						
					</div>
				</div>
			</div>
		</form>
		</section>
		<!--end wrapper-->
	</div>

</body>
</html>