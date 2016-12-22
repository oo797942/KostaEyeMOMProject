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
  					<div id="section1b" class="elements">
   						<a class="side" href="sick.do" > － 아토피피부염</a><br/>
   				    	<a class="side" href="heat.do" > － 태열(소아아토피)</a><br/>
  						<a class="side" href="gunsun.do" > － 건선</a><br/>
   						<a class="side" href="jiru.do" > － 지루성피부염</a><br/>
  						<a class="side" href="dudru.do"  > － 두드러기</a><br/>
   					</div>
  		  			</div>
 			 	<div>
  				<div id="section2" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side2.gif" border="1"/>
  				</div>
  				<div class="elements">
  					<a class="side" href="cold.do" > － 잦은 감기</a><br/>
  					<a class="side" href="bi.do" > － 비염.축농증</a><br/>
  					<a class="side" href="chun.do"  > － 천식</a><br/>
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
  				<div class="elements1">
					<a class="side" href="k1.do" > － 열성경련</a><br/>  					
					<a class="side" href="k2.do"   > － 뇌전증(경기,간질)</a><br/>  					
					<a class="side" href="re.do" style="background-color: #ffa07a; color:#fff; padding-right: 3px;" > － 레녹스가스토증후군</a><br/>  					
  				</div>
  				</div>
  				
  				<div>
  				<div id="section5" class="label">
    				 <img src="/EyeMOM/resources/img/sick/side5.gif" border="1"/>
  				</div>
  				<div class="elements">
 					<a class="side" href="sic.do" > － 식욕부진</a><br/> 					
 					<a class="side" href="yano.do" > － 야뇨증</a><br/> 					
 					<a class="side" href="yaje.do" > － 야제증</a><br/> 					
 					<a class="side" href="hu.do" > － 설사/변비</a><br/> 					
  				</div>
  				</div>
		</td>
			
			<td class="scribeTd" width="840px;">
		 <div class="asthma">
					<div class="asthma1 bg">
						<p class="aTit">레녹스 가스토 증후군의 정의</p>
							<p>레녹스가스토 증후군은 <u>여러 가지 형태의 경련과, 발달부전, 충동조절의 장애 등의<br>
행동 장애를 특징으로 하는 소아기의 간질성 뇌병증</u>으로 소아기에 발생하는 간질 중<br>
가장 심한 형태의 간질로서 보통 만 1-8세까지의 소아에서 발병하는데<br>
특히 1-3세에 가장 많이 발생하고 가장 반응이 좋지 않은 간질증후군의 하나로 알려져 있습니다. <br>
<br>
                          </p>
						<p class="aTit">원인</p>
							<p>어떤 단일한 원인에 의한 질환은 아니고 약 20% 정도는 West증후군(영아연축)으로부터 유래한다고 알려져 있으며, <br>
							이외에도 대개는 이전에 부분발작이나, 전신성 경련 등 다른 형태의 간질을 앓고 있었던 경우가 대부분입니다. </p>
					<br/><br/><br/>
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