<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
<script src="./resources/css/jquery-1.8.2.min.js.다운로드"></script>
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
            <li><a href="http://localhost:8080/TourProject/tour.do" style="color:#fff">메인으로</a></li>
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
            <li ><a href="adminBoard.go">게시판 관리</a></li>
             <li><a href="adminReport.go">신고 관리</a></li>
            <li class="active"><a href="adminQna.go">Q&A</a></li>
            <li><a href="adminGallery.go">사진 관리</a></li>            
            <li><a href="adminVideo.go">동영상 관리</a></li>
            <li><a href="adminGame.go">게임 관리</a></li>
          </ul>
        </div>
        </div>
        </div>
        
<!--         메인 -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">문의 관리</h1>

          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>문의 번호</th>
                  <th>카테고리</th>
                  <th>제목</th>
                  <th>작정자</th>
                  <th>작정일</th>                  
                  <th>답변 상태</th>
                </tr>
	
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>	
        </div>
      
</body>
</html>