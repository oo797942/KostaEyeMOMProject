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
<table class="" >
<tr style="width:1100px; padding:0px; margin:0px;">
<td width="200px;" valign="top">
 				<div>
  					<div id="section1" class="label">
   					   <img src="/EyeMOM/resources/img/sick/side1.gif" border="1"/>
  				    </div>
  					<div id="section1b" class="elements1">
   						<a class="side" href="sick.do" > － 아토피피부염</a><br/>
   				    	<a class="side" href="heat.do" > － 태열(소아아토피)</a><br/>
  						<a class="side" href="gunsun.do" > － 건선</a><br/>
   						<a class="side" href="jiru.do" style="background-color: #ffa07a; color:#fff; padding-right: 30px;"> － 지루성피부염</a><br/>
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
  				<div class="elements">
 					<a class="side" href="sic.do" > － 식욕부진</a><br/> 					
 					<a class="side" href="#" > － 야뇨증</a><br/> 					
 					<a class="side" href="#" > － 야제증</a><br/> 					
 					<a class="side" href="#" > － 허약아/허약체질</a><br/> 					
 					<a class="side" href="#" > － 설사/변비</a><br/> 					
  				</div>
  				</div>
		</td>
		<td width="840px;">
					<div class="asthma">
					<div class="asthma1 bg">
						<p class="aTit">지루성피부염이란?</p>
							<p>
								신생아의 경우 엄마의 호르몬 영향으로 피지분비가 많습니다. 따라서 생후 1개월~3개월 사이에 주로 나타납니다. <br> 
								지루성피부염은 <u>피지선이 많은 두피, 귀, 얼굴, 목부분에 가장 많이 생기는 염증성 피부질환</u>입니다. <br>
								그 외에도 살이 접히는 부분 - 서혜부나 겨드랑이에도 나타납니다.
							</p><br/>
						<p class="aTit">지루성피부염의 증상</p>
							<p><span class="t_col">처음에는 피부가 붉게 되다가 일정시간이 지나면서 노란색의 딱지가 앉게 됩니다.</span>  <br>
							심하면 가려움증을 동반하며 이로 인해 2차 세균감염으로 곪으면서 진물이 흐를 수 있습니다.  <br>
							아토피피부염이나 건선과 혼돈하기 쉬우나 아토피피부염보다는 가려움증이 덜하고 건선처럼 건조하면서 인설이 일어나지는 않습니다.</p>
				</div></div><br/><br/>
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