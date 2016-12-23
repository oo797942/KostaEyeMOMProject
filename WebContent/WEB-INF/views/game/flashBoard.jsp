<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/styleFlash.css" media="screen" data-name="skins">
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
<script type="text/javascript" src="./js/jquery-3.1.1.js"></script>
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
	<h3 class="title">놀아봐요</h3>
		<section class="content portfolio small-images">
			<div class="container">
				<div class="row">
				<div class="tab-pane" id="tab2" style="text-align: center">
								<form name="frm">
								    <input type="hidden" name="pageNo" /><!-- //페이지 번호 -->
					<div class="isotope col-lg-12">
						<ul id="list">
						
<!-- 						모델 넣은 값을 가져와서 JSTL을 사용해서 돌림 -->
									<c:forEach var='vo' items="${list}">
									<c:choose>
    				<c:when test="${empty sessionScope.user}">
    				<!-- 글쓰기 버튼 -->
							<li class="list_item col-lg-3 col-md-4 col-sm-6 branding"><a
								 href="#test-popup" class="open-popup-link"
								>
									<div class="recent-item box">
										<figure class="touching ">
											<img src="/EyeMOM/resources/img/${vo.g_photo}" alt="img" height="150" />
										</figure>
										<div id="itemName" class="item" align="center">${vo.g_title}</div>
									</div>
							</a></li>

					</c:when>
					<c:otherwise>	<!-- 세선정보가 있을경우 사용자 정보 show -->

							<li class="list_item col-lg-3 col-md-4 col-sm-6 branding"><a
								href="/file/textimg.jpg"
								onclick="window.open('flashBoardView.go?g_no=${vo.g_no}', '${vo.g_title}',
                   				'width=1050px,height=690,location=no, toolbar=no, menubar=no, status=no');return false;">
									<div class="recent-item box">
										<figure class="touching ">
											<img src="/EyeMOM/resources/img/${vo.g_photo}" alt="img" height="150" />
										</figure>
										<div id="itemName" class="item" align="center">${vo.g_title}</div>
									</div>
							</a></li>

					</c:otherwise>	
					</c:choose>
					
								</c:forEach>

 

						</ul>
						<!--end portfolio_list -->
					
					</div>
					<!--end isotope -->
					
					
<!-- 					페이징번호  -->
								      			   	<!-- 페이징 -->
			<div class='form-inline' style="text-align: center">
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
</form>
				</div>
				<!--./row-->
			</div>
			<!--./div-->
		</section>
		<!--end wrapper-->
		</div>
		
</body>
</html>