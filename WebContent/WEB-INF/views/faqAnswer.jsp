<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        	<%@ page import="java.util.*, java.text.*"  %>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
 java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
 String today = formatter.format(new java.util.Date());
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>
    <!-- Bootstrap core CSS -->
<!-- 합쳐지고 최소화된 최신 CSS -->
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="./resources/css/dashboard.css" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<!--   <link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/ui-lightness/jquery-ui.css" /> -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <!-- Custom styles for this template -->
  <script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/i18n/jquery-ui-i18n.min.js"></script>
    
<style type="text/css">
body{
margin: 10px 10px 10px 10px;
padding: 50px 10px 10px 10px;
}
.textarea {
	margin: 10;
	padding: 1px 0;
	overflow: auto;
	-webkit-appearance: none;
	-webkit-border-radius: 0;
	resize: none;
	width: 100%;
	height: 100%;
	overflow: hidden;
	line-height: 1;
	font-size: 13pt
}
.form-control{
resize:none;

	width: 100%;
	height: 100%;
}
</style>
<script type="text/javascript">
$(function(){
	$("#u_state").change(function(){

		if($("#u_state").val()=="기간정지"){
			
		$("#u_stop_date").attr("readonly",false);
		}else{
			$("#u_stop_date").attr("readonly","readonly");
		}
	});
	

	$.datepicker.setDefaults($.datepicker.regional['ko']);
	$('#u_stop_date').datepicker();
})
</script>
</head>
<body>
  <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
<!--           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"> -->
<!--             <span class="sr-only">Toggle navigation</span> -->
<!--             <span class="icon-bar"></span> -->
<!--             <span class="icon-bar"></span> -->
<!--             <span class="icon-bar"></span> -->
<!--           </button> -->
          <a class="navbar-brand" style="color:#fff">회원 정지</a>
        </div>
      </div>
</nav>

				<!-- 입력창 div -->
					<div class='answerinputdiv' height="300" >
					<form action="faqAnswerDoing.go">
					 <input type="hidden" name="q_no" value="${vlist.q_no}">
					  <table class="table" width="100%" height="190" border="0">
					    <tbody>
					      <tr border="1">
					        <th align="center" width="10%">제목</th>
					        <td align="center" width="40%">
							${vlist.q_title}
							</td>
					        <th align="center" width="10%"> 작성자</th>
					        <td align="center" width="15%">
					        ${vlist.u_id}
					        </td>
					        <th align="center" width="10%">작성일</th>
					        <td align="center" width="15%">${vlist.q_date}</td>
				          </tr>
					      <tr>
					        <th height="150" width="10%">문의 내용</th>
					        <td colspan="5" width="15%">
					          <textarea class='form-control' id='content'  name='q_content' style="width:100%; height:100%;" disabled="disabled">${vlist.q_content}</textarea>
					        </td>
				          </tr>
					      <tr>
					        <th height="150">답변</th>
					        <td colspan="5" >
					        					          <textarea class='form-control' id='content'  name='q_answer' style="width:100%; height:100%;" >${vlist.q_answer}</textarea>
					        </td>
				          </tr>
				        </tbody>
				      </table>
	<div style="text-align: center">
				          						<input type="submit" value='답변 등록' id='memberBenish' class="btn btn-success btn-lg">
	</div>
					</form>
</div>

</body>
</html>
