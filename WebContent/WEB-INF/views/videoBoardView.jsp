<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>무제 문서</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#recom").click(function(){
		$.ajax({
	        url: "videoBoardRecom.go",
	        type: 'GET',
	        data : { "d_no" : $("#d_no").val()},
	       	success: function(result){
	     	if(result!=0){
	     		alert("이미 추천하신 게시글입니다");
	     	}else if(result==0){
     		alert("추천되었습니다.");	     	
	     		}   
	     	},
		       error:function(err){
		    	   alert(err);
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
				<h1>${ vlist.d_title}<span>조회수: ${vlist.d_count }</span>
				<span id ="reccount">추천수: ${vlist.d_good }</span></h1>
			</div>

			</div>
<input type="hidden" id="g_no" name = "d_no" value="${vlist.d_no}">
	<table width="1000" border="0">

	  <tbody> 
	    <tr>
	      <td colspan="2" align="left" valign="top">
	    <iframe src="/EyeMOM/resources/video/${vlist.d_video}" width="1000px" height="562px" border="0"></iframe>  	
		  </td>
        </tr>
        <tr>
        <td width="849" height="100" align="left" valign="top" style="vertical-align:top; border:6px #ffa07a double; ">
			<h4 style="margin: 0 0 0 0;">가사</h4>
			<span style="margin-top: 3px">${vlist.d_content }</span>
			</td>
			<th width="147" height="100" align="center" valign="middle" style="  padding:3px; border:2px #ffa07a solid; "><img alt="추천하기" src="/EyeMOM/resources/img/recommended.png" id="recom" width="157px" height="" />
			</th>
			
	    </tr>
      </tbody>
</table>
</div>
	
	
</body>
</html>
