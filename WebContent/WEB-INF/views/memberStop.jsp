<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	<%@ page import="java.util.*, java.text.*"  %>
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
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="http://code.jquery.com/ui/1.10.0/themes/ui-lightness/jquery-ui.css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <!-- Custom styles for this template -->
  <script type="text/javascript" src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/i18n/jquery-ui-i18n.min.js"></script>
    
<style type="text/css">
body{
margin: 10px 10px 10px 10px;
padding: 50px 10px 10px 10px;
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

          <a class="navbar-brand" style="color:#fff">회원 정지</a>
        </div>
      </div>
</nav>

				<!-- 입력창 div -->
					<div class='answerinputdiv' height="300" >
					<form action="memberExile.go">
					  <table width="100%" height="250" class='infotable1'>
							<tr >
								<th width="39%" height="23" align="center" valign="middle" class='answertr' style="text-align: center">회원 아이디</th>
							  <td width="61%" align="center" valign="top" class='answertd'><input type='text' style="margin-left: 15px" class="form-control"  value='${vlist.u_id }' name='u_id' id='u_id' placeholder="아이디"  readonly="readonly"/></td>
							</tr>
							<tr>
								<th align="center" valign="middle" class='myfont1' id="stopText" style="width: 10%; text-align: center">
								<select class="form-control" id="u_state" name="u_state">
									<option value="영구정지">영구 정지</option>
									<option value="기간정지">기간 정지</option>
								</select>
								</th>
								<td align="center" valign="middle"><input type='text' class="form-control" style="margin-left: 15px" value='<%= today %>' name='u_stop_date' id='u_stop_date' placeholder="정지 기간" readonly="readonly"/></td>
							</tr>
							<tr>
								<th colspan="2" class='answertr' style="text-align: center; padding-top: 10px">								
						<input type="submit" value='회원 정지' id='memberBenish' class="btn btn-danger btn-lg">
								</th>
							</tr>
						</table>
					</form>
</div>

</body>
</html>
