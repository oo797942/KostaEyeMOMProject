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

.side{
	text-shadow: black;
	font-size: 14px;
	font-weight: bold;
	color: #ffa07a;
}

.sideTop{
	border: 5px;
}
</style>
</head>
<body>
<div class=body>
		<table class="cateTable" border="0">
		<tr>
			<td class="empty"></td>
			<td class="menuTd">
			
			<form>
 				<div class="sideMenu">
  					<div id="section1" class="label">
   					   <img src="/EyeMOM/resources/img/sick/side1.gif" border="1"/>
  				    </div>
  					<div id="section1b" class="elements">
   						<a class="side" href="#" > － 아토피피부염</a><br/>
   				    	<a class="side" href="#" > － 태열(소아아토피)</a><br/>
  						<a class="side" href="#" > － 건선</a><br/>
   						<a class="side" href="#" > － 지루성피부염</a><br/>
  						<a class="side" href="#" > － 두드러기</a><br/>
   					</div>
  		  			</div>
 			 	<div>

  				<div id="section2" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side2.gif" border="1"/>
  				</div>

  				<div class="elements">
  					<a class="side" href="#" > － 잦은 감기</a><br/>
  					<a class="side" href="#" > － 비염.축농증</a><br/>
  					<a class="side" href="#" > － 천식</a><br/>
  					<a class="side" href="#" > － 중이연</a><br/>
  					<a class="side" href="#" > － 구취.구내염</a><br/>
  				</div>
  				</div>
  				<div>

  				<div id="section3" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side3.gif" border="1"/>
  				</div>

  				<div class="elements">
  					<a class="side" href="#" > － 성조숙증</a><br/>
  					<a class="side" href="#" > － 소아비만</a><br/>
  				
  				</div>
  				</div>
  				
  				<div>

  				<div id="section4" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side4.gif" border="1"/>
  				</div>

  				<div class="elements">
					<a class="side" href="#" > － 열성경련</a><br/>  					
					<a class="side" href="#" > － 뇌전증(경기,간질)</a><br/>  					
					<a class="side" href="#" > － 레녹스가스토증후군</a><br/>  					
  				</div>
  				</div>
  				
  				<div>

  				<div id="section5" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side5.gif" border="1"/>
  				</div>

  				<div class="elements">
 					<a class="side" href="#" > － 식욕부진</a><br/> 					
 					<a class="side" href="#" > － 야뇨증</a><br/> 					
 					<a class="side" href="#" > － 야제증</a><br/> 					
 					<a class="side" href="#" > － 허약아/허약체질</a><br/> 					
 					<a class="side" href="#" > － 설사/변비</a><br/> 					
 					<a class="side" href="#" > － 틱장애</a><br/> 					
 					<a class="side" href="#" > － ADHD</a><br/> 					
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