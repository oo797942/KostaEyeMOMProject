<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="/EyeMOM/resources/css/place.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page</title>
<% String place = request.getParameter("mun");%>
<script type="text/javascript">

</script>
</head>
<body>
<div>
	<table id="menuTable">
		<tr >
		<td id="menuTd" >
		<div id="menuDiv">
			<ul class="list-group">
			<li class="list-group-item" ><h4>우리동네</h4></ll>
			<hr id="mapHr" />
			<li class="list-group-item" ><a href="place.do?keyword=키즈카페">키즈카페</a></li>
			<li class="list-group-item" ><a href="place.do?keyword=문화센터">문화센터</a></li>
			<li class="list-group-item" ><a href="place.do?keyword=놀이터">놀이터</a></li>
			<li class="list-group-item" ><a href="place.do?keyword=병원">병원</a></li>
			</ul>
		</div>
		</td>
		<td id="menuTd2" >
		<div id="iFrameDiv" >
			<iframe src="map.go?keyword=${keyword }" ></iframe>
		</div>
		</td>
		</tr>
	</table>
</div>
</body>
</html>