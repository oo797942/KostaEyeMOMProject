<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html>
<head>
<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"> -->
<link href="/EyeMOM/resources/css/place.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main Page2222222</title>
<% String place = request.getParameter("mun");%>

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
			<c:if test="${keyword=='키즈카페' }">
			<div style="text-align: center;" >
				<a href="place.do?keyword=키즈카페" class='tableB'><div class='MapDiv nodap tableB'>키즈카페</div></a>
				<a href="place.do?keyword=문화센터" class='tableA'><div class='MapDiv nodap'>문화센터</div></a>
				<a href="place.do?keyword=놀이터" class='tableA'><div class='MapDiv nodap'>놀이터</div></a>
				<a href="place.do?keyword=병원" class='tableA'><div class='MapDiv nodap'>병원</div></a>
			</div>
			</c:if>
			<c:if test="${keyword=='문화센터' }">
			<div style="text-align: center;" >
				<a href="place.do?keyword=키즈카페" class='tableA'><div class='MapDiv nodap'>키즈카페</div></a>
				<a href="place.do?keyword=문화센터" class='tableB'><div class='MapDiv nodap tableB'>문화센터</div></a>
				<a href="place.do?keyword=놀이터" class='tableA'><div class='MapDiv nodap'>놀이터</div></a>
				<a href="place.do?keyword=병원" class='tableA'><div class='MapDiv nodap'>병원</div></a>
			</div>	
			</c:if>
			<c:if test="${keyword=='놀이터' }">
			<div style="text-align: center;" >
				<a href="place.do?keyword=키즈카페" class='tableA'><div class='MapDiv nodap'>키즈카페</div></a>
				<a href="place.do?keyword=문화센터" class='tableA'><div class='MapDiv nodap'>문화센터</div></a>
				<a href="place.do?keyword=놀이터" class='tableB'><div class='MapDiv nodap tableB'>놀이터</div></a>
				<a href="place.do?keyword=병원" class='tableA'><div class='MapDiv nodap'>병원</div></a>
			</div>
			</c:if>
			<c:if test="${keyword=='병원' }">
			<div style="text-align: center;" >
				<a href="place.do?keyword=키즈카페" class='tableA'><div class='MapDiv nodap'>키즈카페</div></a>
				<a href="place.do?keyword=문화센터" class='tableA'><div class='MapDiv nodap'>문화센터</div></a>
				<a href="place.do?keyword=놀이터" class='tableA'><div class='MapDiv nodap'>놀이터</div></a>
				<a href="place.do?keyword=병원" class='tableB'><div class='MapDiv nodap tableB'>병원</div></a>
			</div>
			</c:if>
			</div>
			</td>
		</tr>
		</table>  
  


		<div style="display: table;">
		<div id="iFrameDiv">
			<iframe src="map.go?keyword=${keyword }"></iframe>
		</div>
		</div>
</div>
</body>
</html>