<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
<link rel="stylesheet" href="resources/css/style.css">
<!-- <script src="./resources/css/jquery-1.8.2.min.js.다운로드"></script> -->
	</head><body>
	<script type="text/javascript" src="./js/jquery-3.1.1.js"></script>
	<script type="text/javascript">
	function fn_movePage(val){
	    jQuery("input[name=pageNo]").val(val);
	    jQuery("form[name=frm]").attr("method", "post");
	    jQuery("form[name=frm]").attr("action","adminGame.do").submit();
	}

</script>
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./resources/css/dashboard.css" rel="stylesheet">

<!-- 상단바 -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
<!--           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> -->
<!--             <span class="sr-only">Toggle navigation</span> -->
<!--             <span class="icon-bar"></span> -->
<!--             <span class="icon-bar"></span> -->
<!--             <span class="icon-bar"></span> -->
<!--           </button> -->
          <a class="navbar-brand" href="home.go" style="color:#fff">EyeMOM</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="home.go" style="color:#fff">메인으로</a></li>
          </ul>
        </div>
      </div>
    </nav>

<!-- 좌측 바 -->
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
          <!--class="active" active 클래스가 붙으면 효과를 적용한다. -->
            <li><a href="adminMember.go" >회원 관리</a></li>
            <li ><a href="adminBoard.go">공지사항 관리</a></li>
            <li><a href="adminPurchase.go">공동구매 관리</a></li>
             <li><a href="adminReport.go">신고 관리</a></li>
            <li><a href="adminQna.go">FAQ</a></li>
            <li><a href="adminVideo.go">동영상 관리</a></li>
            <li class="active"><a href="adminGame.go">게임 관리</a></li> </ul>
        </div>
        </div>
        </div>
        
<!--         메인 -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" >
        								<form name="frm">
								    <input type="hidden" name="pageNo" /><!-- //페이지 번호 -->
          <h1 class="page-header">게임 관리</h1>

          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th style="text-align:center">게임 번호</th>
                  <th style="text-align:center">제목</th>
                  <th style="text-align:center">추천수</th>
                  <th style="text-align:center">조회수</th>
                  <th style="text-align:center">수정</th>
                  <th style="text-align:center">삭제</th>
                </tr>
			           <tbody class="table-striped table-hover">
				<c:forEach var='vo' items="${list}">
			<tr>
				<td style="text-align:center">${vo.g_no}</td>
				<td style="text-align:center">
				<a href="/file/textimg.jpg" onclick="window.open('flashBoardView.go?g_no=${vo.g_no}', '${vo.g_title}',
                   'width=1180,height=700');return false;">
				${vo.g_title}
				</a>
				</td>
				<td style="text-align:center">${vo.g_good}</td>
				<td style="text-align:center">${vo.g_count}</td>
				<td style="text-align:center"><input type="button" value="수정" onclick="location.href='adminGameUpdate.go?g_no=${vo.g_no}';"  class="btn btn-warning btn-sm" /></td>
				<td style="text-align:center;"><input type="button" value="삭제" onclick="location.href='adminGameDelete.go?g_no=${vo.g_no}';"  class="btn btn-danger btn-sm" /></td>
			</tr>
	</c:forEach>
              </thead>
              </tbody>
            </table>
            <hr style="border: solid 1px #cccccc; opacity:0.4 "/>
          </div >	
		<div  style="text-align:right;">
		<p>
          <a href="adminGameInsert.go" ><input type="button" value="새로운 게임 등록"  class="btn btn-primary btn-sm"/></a>
		</p>
		</div>
          
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
      
</body>
</html>