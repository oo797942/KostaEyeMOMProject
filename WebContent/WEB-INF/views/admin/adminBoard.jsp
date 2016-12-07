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
            <li class="active"><a href="adminBoard.go">게시판 관리</a></li>
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
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>글번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>추천수</th>
                  <th>신고수</th>
                  <th>조회수</th>
                  <th>작성일</th>
                  <th>게시판 분류</th>
                </tr>


	
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
        </div>
      
</body>
</html>