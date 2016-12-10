<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>
</head>
<body bgcolor="gray">
	<table width="1000" border="0">
	  <tbody> 
	    <tr>
	      <td>
	    <iframe src="/EyeMOM/resources/video/${vlist.d_video}" width="800" height="600px" border="1"></iframe>  	
	      </td>
	      <td>
	      <table width="200" border="0" height="600px">
	  <tbody>
	  	    <tr>
	      <td height="5%"  style="vertical-align:top; text-align:center">
		<h3>가사</h3>
		</td>
        </tr>
	    <tr>
	      <td height="85%"   style="vertical-align:top; background-color:#FFFFFF; padding:10px; border:1px solid #ACB4F2	;">
		${vlist.d_content}
		</td>
        </tr>
	    <tr>
	      <td height="10%" style="text-align:center">
	     	<img alt="추천하기" src="/EyeMOM/resources/img/recommended.png" width="160px" height="58"/>
	      </td>
        </tr>
      </tbody>
</table>
	      </td>
        </tr>
      </tbody>
</table>
	
	
</body>
</html>
