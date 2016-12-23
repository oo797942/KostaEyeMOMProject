<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<link href="/EyeMOM/resources/css/place.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
<% String place = request.getParameter("mun");%>
<script type="text/javascript">
$(function(){
	$('.nodap').click(function(){
		$('.nodap').removeClass('tableB');
		$(this).addClass('tableB');
	});
});
</script>
<style type="text/css">
	@FONT-FACE {
	font-family: 'nana';
	src:url('/resources/font/THEjunggt130.otf');
}
*{ 
 	font-family: 'nana' !important;
 }
</style>
</head>
<body>
<div class='body'>
		<table style="width: 1000px; margin-top: 20px;">
		<tr >
			<td>
			<div style="text-align: center;" >
				<a href="place.do?keyword=키즈카페" class='tableA'><div class='MapDiv nodap'>키즈카페</div></a>
				<a href="place.do?keyword=문화센터" class='tableA'><div class='MapDiv nodap'>문화센터</div></a>
				<a href="place.do?keyword=놀이터" class='tableA'><div class='MapDiv nodap'>놀이터</div></a>
				<a href="place.do?keyword=병원" class='tableA'><div class='MapDiv nodap'>병원</div></a>
			</div>
			</td>
		</tr>
		</table>  
  

<!-- 		<td id="menuTd"> -->
<!-- 		<div id="menuDiv"> -->	
<!-- 			<ul class="list-group"> -->
<!-- 			<li class="list-group-item" ><h4>우리동네</h4></li> -->
<!-- 			<hr id="mapHr"/> -->
<!-- 			<li class="list-group-item"><a href="place.do?keyword=키즈카페">키즈카페</a></li> -->
<!-- 			<li class="list-group-item" ><a href="place.do?keyword=문화센터">문화센터</a></li> -->
<!-- 			<li class="list-group-item" ><a href="place.do?keyword=놀이터">놀이터</a></li> -->
<!-- 			<li class="list-group-item" ><a href="place.do?keyword=병원">병원</a></li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
<!-- 		</td> -->
		<div style="display: table;">
		<div id="iFrameDiv">
			<iframe src="map.go?keyword=${keyword }"></iframe>
		</div>
		</div>
</div>
</body>
</html>