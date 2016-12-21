<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript">
	$(function(){
		 
		
		$("#resertype").change(function(){
			var sel = $('#resertype').val();
			
				location.href = "/TourProject/list.do?tour=admin-quest&search=all&select="+sel;
				});
		
			

	
		
	});

</script>
	</head>
	<body>&lt;
	
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./resources/css/dashboard.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
            <li><a href="adminBoard.go">공지사항 관리</a></li>
             <li><a href="adminReport.go">신고 관리</a></li>
            <li><a href="adminQna.go">FAQ</a></li>
            <li  class="active"><a href="adminVideo.go">동영상 관리</a></li>
            <li><a href="adminGame.go">게임 관리</a></li>
          </ul>
        </div>
        </div>
        </div>
        
<!--         메인 -->

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">동영상 관리</h1>
          <ul class="nav nav-tabs"><!--  nav/ nav-tab 클래스를 추가하면 탭스타일로 나타납니다.-->
<li class="active"><a href="#tab1" data-toggle="tab">춤을 춰요</a></li>
<li><a href="#tab2" data-toggle="tab">공부 해요</a></li><!--탭메뉴를 사용하기위해 data-toggle=”tab”을 지정해줍니다.   -->
</ul>
<div class="tab-content"><!--  탭내용을 보여주는 곳에 ‘tab-content’ 클래스를걸어줍니다-->
<div class="tab-pane active" id= "tab1"><!-- nav-tab부분 링크부분과 탭내용을 보여줄 id를 맞춰줍니다-->

          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th style="text-align:center">게시글 번호</th>
                  <th style="text-align:center">제목</th>
                  <th style="text-align:center">추천수</th>
                  <th style="text-align:center">조회수</th>
                  <th style="text-align:center">수정</th>
					<th style="text-align:center">삭제</th>
                </tr>

           <tbody class="table-striped table-hover">
				<c:forEach var='vo' items="${vlist}">
			<tr>
				<td style="text-align:center">${vo.d_no}</td>
				<td style="text-align:center">
				<a href="/file/textimg.jpg" onclick="window.open('videoBoardView.go?d_no=${vo.d_no}', '${vo.d_title}',
                  'width=1180,height=700'); return false;">
				${vo.d_title}
				</a>
				</td>
				<td style="text-align:center">${vo.d_good}</td>
				<td style="text-align:center">${vo.d_count}</td>
				<td style="text-align:center"><input type="button" value="수정" onclick="location.href='adminVideoUpdate.go?d_no=${vo.d_no}';"  class="btn btn-warning btn-sm" /></td>
				<td style="text-align:center;"><input type="button" value="삭제" onclick="location.href='adminVideoDelete.go?d_no=${vo.d_no}';"  class="btn btn-danger btn-sm" /></td>
			</tr>
	</c:forEach>
	
              </thead>
              </tbody>
            </table>
          </div>
          
<!--           첫번째 텝매뉴 내용이 끝나는 div -->
          </div>
<div class="tab-pane" id="tab2">

          <div class="table-responsive">
            <table class="table table-striped table-hover">
              <thead>
                <tr>
                  <th style="text-align:center">게시글 번호</th>
                  <th style="text-align:center">제목</th>
                  <th style="text-align:center">추천수</th>
                  <th style="text-align:center">조회수</th>
                  <th style="text-align:center">수정</th>
					<th style="text-align:center">삭제</th>
                </tr>

           <tbody class="table-striped table-hover">
				<c:forEach var='vo' items="${slist}">
			<tr>
				<td style="text-align:center">${vo.v_no}</td>
				<td style="text-align:center">
		<a href="/file/textimg.jpg"	onclick="window.open('studyBoardView.go?v_no=${vo.v_no}', '${vo.v_title}',
           'width=1180,height=700'); return false;">
				${vo.v_title}
				</a>
				</td>
				<td style="text-align:center">${vo.v_good}</td>
				<td style="text-align:center">${vo.v_count}</td>
				<td style="text-align:center"><input type="button" value="수정" onclick="location.href='adminStudyUpdate.go?v_no=${vo.v_no}';"  class="btn btn-warning btn-sm" /></td>
				<td style="text-align:center;"><input type="button" value="삭제" onclick="location.href='adminStudyDelete.go?v_no=${vo.v_no}';"  class="btn btn-danger btn-sm" /></td>
			</tr>
	</c:forEach>
              </thead>
              </tbody>
            </table>
          </div>

</div>
</div>
		<div  style="text-align:right;">
		<p>
                    <a href="adminVideoInsert.go"><input type="button" value="새로운 영상 등록"  class="btn btn-primary btn-sm"/></a>	
    </p>
    </div>
        </div>
      
</body>
</html>