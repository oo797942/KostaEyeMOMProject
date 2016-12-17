<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script type="text/javascript">
$(function(){
	//      팝업 띄우기 위한 쿼리
	
	
	
});
		function memStop(u_id){
			alert(u_id);
		};

</script>
	</head><body>
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
            <li class="active"><a href="adminMember.go" >회원 관리</a></li>
            <li ><a href="adminBoard.go">게시판 관리</a></li>
            <li><a href="adminReport.go">신고 관리</a></li>
            <li><a href="adminQna.go">Q&A</a></li>
            <li><a href="adminGallery.go">사진 관리</a></li>            
            <li><a href="adminVideo.go">동영상 관리</a></li>
            <li><a href="adminGame.go">게임 관리</a></li>
          </ul>
        </div>
        </div>
        </div>
        
<!--         메인 -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">회원 관리</h1>

          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th>아이디</th>
                  <th>닉네임</th>
                  <th>이름</th>
                  <th>전화번호</th>
                  <th>회원등급</th>
                  <th>회원상태</th>
                  <th>정지기간</th>
                  <th>회원정지</th>
                </tr>
                     <tbody class="table-striped table-hover">
<c:forEach var="vo" items="${list}">
      <tr>
                  <th>${vo.u_id}</th>
                  <th>${vo.u_nick}</th>
                  <th>${vo.u_name}</th>
                  <th>${vo.u_tel}</th>
                  <th>${vo.u_lvl}</th>
                  <th>${vo.u_state}</th>
                  <c:if test="${vo.u_state=='활동중'}">
                  <th>-</th>                  
                  </c:if>
                  <c:if test="${vo.u_state=='영구정지'}">
                  <th>영구정지</th>                  
                  </c:if>
                  <c:if test="${vo.u_state=='기간정지'}">
                  <th>${vo.u_stop_date}</th>                  
                  </c:if>

                  <th><input type="button" value="회원정지" class="btn btn-warning btn-sm"
                  onclick="window.open('memberStop.go?u_id=${vo.u_id}', '회원 정지',
                   				'width=450px,height=380');return false;"
                   /></th>
                </tr>
</c:forEach>

	
              </thead>
         
              </tbody>
            </table>
          </div>	
        </div>
      
</body>
</html>