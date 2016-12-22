 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0058)http://localhost:8080/TourProject/list.do?tour=admin-quest -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>관리자 페이지</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
	<link rel="stylesheet" href="resources/css/boardInsert.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/ui-lightness/jquery-ui.css" />
    <!-- Custom styles for this template -->
  <script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/i18n/jquery-ui-i18n.min.js"></script>
    
<script type="text/javascript">
$(function(){
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	$('#we_start').datepicker();
	$('#we_end').datepicker();
	$('#we_deposit').datepicker();
	
	$("#b_photo2").hide();
   	$("#b_photo3").hide();
   	
    $(".photo").on('change', function(){
    	$(this).hide();
    	$(this).next().show();
       fileInfo(this);
    });
    
	$("#cancel").click(function(){
    	
    	history.back();
    });
});
function fileInfo(f){
   var file = f.files; // files 를 사용하면 파일의 정보를 알 수 있음

   // 파일의 갯수만큼 반복
   for(var i=0; i<file.length; i++){
      var reader = new FileReader(); // FileReader 객체 사용
      reader.onload = function(rst){
         $('#imgs').append('<img src="' + rst.target.result + '" class="miri ">'); // append 메소드를 사용해서 이미지 추가
         // 이미지는 base64 문자열로 추가
         // 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
      }
      reader.readAsDataURL(file[i]); // 파일을 읽는다
   }
}

</script>
<style type="text/css">
th{
/* padding:20px 20px 20px 20px; */
margin: 20px 20px 20px 20px;
}
</style>
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./resources/css/dashboard.css" rel="stylesheet">

	</head>
	<body>

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
            <li class="active"><a href="adminPurchase.go">공동구매 관리</a></li>
             <li><a href="adminReport.go">신고 관리</a></li>
            <li><a href="adminQna.go">FAQ</a></li>
            <li  ><a href="adminVideo.go">동영상 관리</a></li>
            <li ><a href="adminGame.go">게임 관리</a></li> </ul>
        </div>
        </div>
        </div>
         
<!--         메인 -->

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">공동구매 등록</h1>
                   <form action="adminPurchaseInsertDoing.go" method='post' enctype='multipart/form-data'>
                  <div>
                     <div class='filelabel'>
                        <label id='boardlabel2'>사진 첨부&nbsp;</label>
                     </div>
                     <div class='labelinline3'></div>
                     <div class='labelinline3'>
                        <!-- 라벨과 테이블 inline -->
                        <table>
                          	<tr>
								<th colspan="2" width="50%"><input type="text" name="we_title" id="we_title" class="form-control" placeholder="제목"></th>
								<th width="25%"><input type="text" name="we_price" id="we_price" class="form-control" placeholder="가격"></th>
								<th width="25%"><input type="text" name="we_max" id="we_max" class="form-control" placeholder="최대수량"></th>
							</tr>
                          <tr>
							  	<th width="228">
							  		  	<input type='file' accept=" image/*" class='photo' id='b_photo1' name='we_photo1'/>
                              	<input type='file' accept=" image/*" class='photo' id='b_photo2' name='we_photo2'/>
                              	<input type='file' accept=" image/*" class='photo' id='b_photo3' name='we_photo3'/>
							  	</th>
								<th width="327"><input type="text" class="form-control" name="we_start" id="we_start" placeholder="구매시작일"></th>
								<th><input type="text" class="form-control" name="we_end" id="we_end" placeholder="구매종료일"></th>
								<th><input type="text" class="form-control" name="we_deposit" id="we_deposit" placeholder="입금마감일"></th>
							</tr>
<tr >
<td colspan="4">
   <!-- 사진이 보여질 공간 -->
                     <div id='imgs'></div>
                  </td>
</tr>
							<tr>
								<th colspan="4" height="400px" >
									<textarea class="form-control" name="we_content" id="we_content" placeholder="내용" style="width:100%; height:100%;resize:none;"></textarea>
								</th>
							</tr>
                        </table>
                     </div>
                  <hr/>
<input type="submit" value="공동구매 등록"  class="btn btn-success btn-sm"/>
                  </div>
                  </form>
               </div>
               
</body>
</html>