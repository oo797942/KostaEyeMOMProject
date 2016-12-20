<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
<script src="./resources/css/jquery-1.8.2.min.js.다운로드"></script>
<link rel="stylesheet" href="resources/css/style.css">
	</head><body>&lt;<script type="text/javascript">
	$(function(){
		
		 
		$("#resertype").change(function(){
			var sel = $('#resertype').val();
			
				location.href = "/TourProject/list.do?tour=admin-quest&search=all&select="+sel;
				});
		
			

		$("#search").keydown(function(key){
		if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
			location.href = "/TourProject/list.do?tour=admin-quest&select=all&search="+$("#search").val();
		};
	});
		
	});
	function popupOpen(articleNo){
		var popUrl = "/TourProject/list.do?tour=quest-view&articleNo="+articleNo;	//팝업창에 출력될 페이지 URL
		var popOption = "width=800, height=600, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
			window.open(popUrl,"",popOption);
};
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
          <a class="navbar-brand" href="http://localhost:8080/TourProject/list.do?tour=admin-sal" style="color:#fff">EyeMOM</a>
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
            <li class="active"><a href="adminBoard.go">게시판 관리</a></li>
            <li><a href="adminReport.go">신고 관리</a></li>
            <li><a href="adminQna.go">FAQ</a></li>
            <li><a href="adminGallery.go">사진 관리</a></li>            
            <li><a href="adminVideo.go">동영상 관리</a></li>
            <li><a href="adminGame.go">게임 관리</a></li>
          </ul>
        </div>
        </div>
        </div>
        
<!--         메인 -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">게시판 관리</h1>
          <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
              <tr>
                <th width="8%">게시판 종류</th>
                <td width="10%">
                 <select name="resertype" id="resertype">
                  <option value="all">전체 보기</option>
                  <option value="Y">게시판1</option>
                  <option value="N">게시판2</option>
                </select>
                  </td>
                <th width="6%" style="text-align:center">검색</th>
                <td width="30%">
                  <input type="text" name="search" id="search" class="form-control" placeholder="검색어를 입력하세요.">
                </td>
                <th width="39%">&nbsp;</th>
               
              </tr>
            </tbody>
          </table>
          <hr>
<form name="frm">
    <input type="hidden" name="pageNo" /><!-- //페이지 번호 -->

          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
              
                <tr>
                  <th>글번호</th>
                  <th>제목</th>
                  <th>조회수</th>
                  <th>게시일</th>
                  <th>공지사항 수정</th>
                </tr>
	<c:forEach var='vo' items='${list}'>
<tr>
				<th>${vo.b_no }</th>
				<th>${vo.b_title }</th>	
				<td>${vo.b_count }</td>
				<td>${vo.b_date }</td>
				<td style="text-align:center"><input type="button" value="수정" onclick="location.href='adminBoardUpdate.go?b_no=${vo.b_no}';"  class="btn btn-warning btn-sm" /></td>
</tr>
	</c:forEach>
				

	
              </thead>
              <tbody>
              </tbody>
            </table>
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
</form>
		<div  style="text-align:right;">
		<p>
          <a href="adminBoardInsert.go" ><input type="button" value="공지사항 등록"  class="btn btn-primary btn-sm"/></a>
		</p>
		</div>
      
        </div>
</body>
</html>