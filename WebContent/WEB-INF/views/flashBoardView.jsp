<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->

<!-- 부가적인 테마 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script type="text/javascript">
$(function(){
	$("#recom").click(function(){
		$.ajax({
	        url: "flashBoardRecom.go",
	        type: 'GET',
	        data : { "g_no" : $("#g_no").val()},
	       	success: function(result){
	     	if(result!=0){
	     		alert("이미 추천하신 게시글입니다");
	     	}else if(result==0){
     		alert("추천되었습니다.");	     	
	     		}   
	     	},
		       error:function(err){
		    	   alert(err);
		    	  location.reload();
		       }
	     });
	});
});
</script>
<style type="text/css">
.game_play_wrap .head1 {
    position: relative;
    height: 40px;
    padding-top: 20px;
    padding-left: 30px;
    background: #ffa07a;
    color: #fff;
    vertical-align: middle;
}
.game_play_wrap h1 {
    font-size: 16px;
    font-weight: bold;
     margin: 0;
    padding: 0;
}
.game_play_wrap h1 span {
    margin-left: 50px;
    font-size: 12px;
    color: #fff;
}
.play_mnu {
    position: absolute;
    top: 13px;
    right: 25px;
    text-indent: -9999px;
     margin: 0;
    padding: 0;
}
</style>

</head>
<body>
<div style="width: 1010px; margin: 10px 10px 10px 10px;">
		<div class="game_play_wrap">
			<div class="head1">
				<h1>${ vlist.g_title}<span>조회수: ${vlist.g_count }</span>
				<span id ="reccount">추천수: ${vlist.g_good }</span></h1>
			</div>

			</div>
<input type="hidden" id="g_no" name = "g_no" value="${vlist.g_no}">
	<table width="1000" border="0">
<!-- 		<tr> -->
<%-- 			<td width="639" style="text-align:center;  " >${ vlist.g_title}</td> --%>
<%-- 			<td width="157" style="text-align:center;   ">${vlist.g_count }</td> --%>
<%-- 			<td width="200" style="text-align:center;  ">${vlist.g_good }</td> --%>
<!-- 		</tr> -->
		
	  <tbody> 
	    <tr>
	      <td colspan="2">
	    <iframe src="/EyeMOM/resources/flash/${vlist.g_flash}" width="800" height="600px" border="1"></iframe>  	
	      </td>
	      <td>
	      <table width="200" border="0" height="600px">
	  <tbody>
	  	    <tr>
	      <td height="5%"  style="vertical-align:top; text-align:center; background-color: #ffa07a; color: #fff;">
		<h3 >게임 설명</h3>
		</td>
        </tr>
	    <tr>
	      <td height="85%"  style="vertical-align:top;  padding:10px; border:6px #ffa07a double; ">
		<strong>${vlist.g_content}</strong>
		</td>
        </tr>
	    <tr>
	      <td height="10%" style="text-align:center; ">
	     	<img alt="추천하기" src="/EyeMOM/resources/img/recommended.png" id="recom" width="160px" height="58" style="margin-top: 15px"/>
	      </td>
        </tr>
      </tbody>
</table>
	      </td>
        </tr>
      </tbody>
</table>
</div>
	
	
</body>
</html>
