<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/EyeMOM/resources/css/sick/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="/EyeMOM/resources/css/sick/c3.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.side{
	font-size: 15px;
	font-weight: bold;
	color: #ffa07a;
	text-decoration: none !important;
}
</style>
</head>
<body>

<div class=body><br/>
<table class="">
<tr style="width: 1100px; padding:0; margin:0px;">
<td width="200px;" valign="top">
 				<div>
  					<div id="section1" class="label">
   					   <img src="/EyeMOM/resources/img/sick/side1.gif" border="1"/>
  				    </div>
  					<div id="section1b" class="elements">
   						<a class="side" href="sick.do"> － 아토피피부염</a><br/>
   				    	<a class="side" href="heat.do" > － 태열(소아아토피)</a><br/>
  						<a class="side" href="gunsun.do" > － 건선</a><br/>
   						<a class="side" href="jiru.do" > － 지루성피부염</a><br/>
  						<a class="side" href="dudru.do" > － 두드러기</a><br/>
   					</div>
  		  			</div>
 			 	<div>
  				<div id="section2" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side2.gif" border="1"/>
  				</div>
  				<div class="elements">
  					<a class="side" href="cold.do" > － 잦은 감기</a><br/>
  					<a class="side" href="bi.do" > － 비염.축농증</a><br/>
  					<a class="side" href="chun.do" > － 천식</a><br/>
  					<a class="side" href="jung.do" > － 중이염</a><br/>
  					<a class="side" href="gu.do" > － 구취.구내염</a><br/>
  				</div>
  				</div>
  				<div>
  				<div id="section3" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side3.gif" border="1"/>
  				</div>
  				<div class="elements">
  					<a class="side" href="josuk.do" > － 성조숙증</a><br/>
  					<a class="side" href="biman.do" > － 소아비만</a><br/>
  					<a class="side" href="dang.do" > － 소아당뇨</a><br/>
  				
  				</div>
  				</div>
  				
  				<div>
  				<div id="section4" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side4.gif" border="1"/>
  				</div>
  				<div class="elements">
					<a class="side" href="k1.do" > － 열성경련</a><br/>  					
					<a class="side" href="k2.do" > － 뇌전증(경기,간질)</a><br/>  					
					<a class="side" href="re.do" > － 레녹스가스토증후군</a><br/>  					
  				</div>
  				</div>
  				
  				<div>
  				<div id="section5" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side5.gif" border="1"/>
  				</div>
  				<div class="elements1">
 					<a class="side" href="sic.do"  style="background-color: red; padding-right: 65px;" > － 식욕부진</a><br/> 					
 					<a class="side" href="#" > － 야뇨증</a><br/> 					
 					<a class="side" href="#" > － 야제증</a><br/> 					
 					<a class="side" href="#" > － 허약아/허약체질</a><br/> 					
 					<a class="side" href="#" > － 설사/변비</a><br/> 					
 					<a class="side" href="#" > － 틱장애</a><br/> 					
 					<a class="side" href="#" > － ADHD</a><br/> 					
  				</div>
  				</div>
		</td>
		<td width="840px;">
			        
<div class="eat_top">
	<div><img class="imgt" src="/EyeMOM/resources/img/sick/eat_top_txt01.gif"></div><br/>
	<div><img class="imgt" src="/EyeMOM/resources/img/sick/eat_top_txt02.gif"></div>
</div><br/>

<dl class="contB">
	<dt><img class="imgt" src="/EyeMOM/resources/img/sick/eat01_tit.gif"></dt>
	<dd><img class="imgt" src="/EyeMOM/resources/img/sick/eat01_txt.gif"></dd>
</dl><br/>

<dl class="contB">
	<dt><img class="imgt" src="/EyeMOM/resources/img/sick/eat02_tit.gif"></dt>
	<dd class="ptb35"><img class="imgt" src="/EyeMOM/resources/img/sick/eat02_txt01.gif"></dd>
	<dd><img class="imgt" src="/EyeMOM/resources/img/sick/eat02_check.gif"></dd>
</dl><br/>

<dl class="contB">
	<dt><img class="imgt" src="/EyeMOM/resources/img/sick/eat03_tit.gif"></dt>
	<dd><img class="imgt" src="/EyeMOM/resources/img/sick/eat03_txt01.gif"></dd>
</dl><br/>

<dl class="contB">
	<dt><img class="imgt" src="/EyeMOM/resources/img/sick/eat04_tit.jpg"></dt>
</dl><br/>
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


// alert(elements.length);

// elements[0].style.display="block";

// 상태에 따라 접거나 펼치기
function switchDisplay() {
  var parent = this.parentNode;
  var target = parent.getElementsByTagName("div")[1];
//   alert(target);
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