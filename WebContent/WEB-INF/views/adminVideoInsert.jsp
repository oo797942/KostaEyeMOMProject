<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
	</head><body>
	<script type="text/javascript">
	$(function(){
		
        $("#d_photoName").on('change', function(){
        	readURL(this);
        });
		
		$("#resertype").change(function(){
			var type = $('#resertype').val();
			location.href = type;
			
				});
		
			
		
	});

function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }

      reader.readAsDataURL(input.files[0]);
    }
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
            <li><a href="home.do" style="color:#fff">메인으로</a></li>
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
            <li  class="active"><a href="adminVideo.go">동영상 관리</a></li>
            <li ><a href="adminGame.go">게임 관리</a></li> </ul>
        </div>
        </div>
        </div>
         
<!--         메인 -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">춤을춰요 영상 등록</h1>
          <form action="adminVideoInsertDoing.go"  method="post" enctype="multipart/form-data">
    <table style="width:100%; height:800" >
  <tbody>
    <tr height="50">
      <th width="10%" style="text-align:center">제목 </th>
      <td colspan="2" width="50%">
      <input type="text" class="form-control" name="d_title" placeholder="제목을 입력하세요">
      </td>
		<th width="10%" style="text-align:center">분류</th>
		<td width="30%">
			                 <select name="resertype" id="resertype">
                  <option value="adminVideoInsert.go" selected>춤을 춰요</option>
                  <option value="adminStudyInsert.go">공부 해요</option>
                </select>
		</td>
    </tr>
    <tr height="50">
      <th width="10%" style="text-align:center"> 이미지</th>
		<td width="30%">
        <input type='file' id="d_photoName"  accept=" image/*" name="d_photoName"/>
		</td>
      <td width="5%">&nbsp;</td>
      <th width="10%" style="text-align:center">영상</th>
      <td width="30%">
        <input type='file' id="d_flashName" accept="video/*" name="d_videoName" />
      </td>
    </tr>
    <tr height="50">
      <th colspan="2" width="50%" style="text-align:center">영상 이미지</th>
      <th colspan="3" width="50%" style="text-align:center">영상 설명(가사)</th>
    </tr>
        <tr height="400">
			<td colspan="3" width="50%" border="1">
    <img id="blah" src="#" alt="입력된 이미지가 표시됩니다." style="width:500px; height:400px;" />
     </td>
      <td colspan="3" width="50%">
	 <textarea name = "d_content" class="form-control"  placeholder="설명을 입력하세요" style="width:100%; height:100%;"></textarea>		
    </td>
     </tr>
  </tbody>
</table>
<hr/>
<input type="submit" value="게임등록" class="btn btn-success btn-sm" />
          </form>
      </div>

     
</body>
</html>