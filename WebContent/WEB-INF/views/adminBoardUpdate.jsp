<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
<script src="./resources/css/jquery-1.8.2.min.js.다운로드"></script>
	</head><body>&lt;<script type="text/javascript">

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
            <li class="active"><a href="adminBoard.go">공지사항 관리</a></li>
            <li><a href="adminPurchase.go">공동구매 관리</a></li>
           <li><a href="adminReport.go">신고 관리</a></li>
            <li><a href="adminQna.go">FAQ</a></li>
            <li><a href="adminVideo.go">동영상 관리</a></li>
            <li><a href="adminGame.go">게임 관리</a></li>
          </ul>
        </div>
        </div>
        </div>
        
<!--         메인 -->
    

 <form action="adminBoardUpdateDoing.go" method="post" >
 <input type="hidden" name="b_no" value="${vlist.b_no }">
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">공지사항 수정</h1>
          <table width="100%" height="11%" border="0" cellspacing="0" cellpadding="20">
  <tbody>
    <tr>
      <th align="center" valign="middle" scope="row">작성자</th>
      <td colspan="3"><input type="text" name = "u_id" id="memberId" class="form-control" value="admin" readonly></td>
   
    </tr>
    <tr>
      <th height="53" align="center" valign="middle" scope="row">제목</th>
      <td colspan="3"><input type="text" name="b_title" id="b_title" value="${vlist.b_title }" class="form-control" placeholder="제목을 입력하세요."></td>
      </tr>
        <tr>
                  <td height="450" colspan="4">
                  <textarea class="form-control" name="b_content" id="articleContent"  placeholder="내용을 입력하세요" style="width:100%; height:100%; resize:none">${vlist.b_content }</textarea></td>
              
                </tr>
  </tbody>
</table>

<hr/>
            <input type="submit" value="게시글 수정" class="btn btn-success btn-sm" id="articleInput" name="articleInput" />

        </div>
  </form>


	
      
</body>
</html>