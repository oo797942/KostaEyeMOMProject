<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.cateTable{
	margin:0;
	padding:0;
	width: 1100px;
	border: 1;
	margin-top: 20px;
	
}
.menuTd{
	margin:0;
	padding:0;
	padding-right:10px;
	margin-left:100px;
	width:200px;
	vertical-align: top;
	text-align: left;
	border: 1;
}

.scribeTd{
	margin:0;
	padding:0;
	width:800px;
}

.empty{

	width: 100px;

}

</style>
</head>
<body>
<div class=body>
	<div class="sickBody" style="margin: 0 auto; padding: 0 auto;">
		<table class="cateTable" border="1">
		<tr>
			<td class="empty"></td>
			<td class="menuTd">
			
			<form>
 				<div class="sideMenu">
  					<div id="section1" class="label">
   					   <h3><p>아토피/피부</p></h3>
  				    </div>
  					<div id="section1b" class="elements">
   						<a href="#" > - 아토피피부염</a><br/>
   				    	<a href="#" > - 태열(소아아토피)</a><br/>
  						<a href="#" > - 건선</a><br/>
   						<a href="#" > - 지루성피부염</a><br/>
  						<a href="#" > - 두드러기</a><br/>
   					</div>
  		  			</div>
 			 	<div>

  				<div id="section2" class="label">
    				<h3><p>감기/비염</p></h3>
  				</div>

  				<div class="elements">
  					<a href="#" > - </a>
  					
  					<input type="radio" name="button1" /> - 잦은 감기<br />
    				<input type="radio" name="button1" /> - 비염/축농증<br />
				    <input type="radio" name="button1" /> - 천식<br />
    				<input type="radio" name="button1" /> - 중이염<br />
 				    <input type="radio" name="button1" /> - 구취/구내염<br />
  				</div>
				</div>
			</form>
			</td>
			
			<td class="scribeTd">
			<img src="/EyeMOM/resources/img/sick/ato_1.jpg"><br/><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_2.gif"><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_3.gif"><br/><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_4.jpg"><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_6.gif"><br/>
			<img src="/EyeMOM/resources/img/sick/ato_7.jpg"><br/><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_8.gif"><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_9.jpg"><br/><br/><br/>
			<img src="/EyeMOM/resources/img/sick/ato_10.jpg"><br/><br/>
			</td>
		</tr>
		</table>
	</div>
</div>

<script type="text/javascript">
var elements = document.getElementsByTagName("div");
// 모든 영역 접기
for (var i = 0; i < elements.length; i++) {
  if (elements[i].className == "elements") {
    elements[i].style.display="none";
  } else if (elements[i].className == "label") {
    elements[i].onclick=switchDisplay;
  }
}
// 상태에 따라 접거나 펼치기
function switchDisplay() {
  var parent = this.parentNode;
  var target = parent.getElementsByTagName("div")[1];
  if (target.style.display == "none") {
    target.style.display="block";
  } else {
    target.style.display="none";
  }
  return false;
}
</script>

</body>
</html>