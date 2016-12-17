<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resources/css/styleFlash.css" media="screen" data-name="skins">
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
</script>
</head>
<body>
	<div class="body">
	<h3 class="title">놀아봐요</h3>
		<section class="content portfolio small-images">
			<div class="container">
				<div class="row">
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
					<div class="col-sm-12 text-center">
						<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
				<!--./row-->
			</div>
			<!--./div-->
		</section>
		<!--end wrapper-->
		</div>
		
</body>
</html>