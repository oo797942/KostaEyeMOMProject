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
   						<a class="side" href="jiru.do" > － 지루성피부염</a><br/>
  						<a class="side" href="dudru.do" style="background-color: #ffa07a; color:#fff; padding-right: 80px;" > － 두드러기</a><br/>
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
 					<a class="side" href="yano.do" > － 야뇨증</a><br/> 					
 					<a class="side" href="yaje.do" > － 야제증</a><br/> 					
 					<a class="side" href="hu.do" > － 설사/변비</a><br/> 						
  				</div>
  				</div>
		</td>
		<td width="840px;">
					<div class="asthma">
					<div class="asthma1 bg">
						<p class="aTit">영유아 두드러기란?</p>
							<p>몸에 맞지 않은 음식이나 외부접촉에 의해 <u>피부가 알러지 반응을 해서 얼룩 모양의 붉은 반점</u>이 올라오는 질환입니다.
							</p><br/>
						<p class="aTit">두드러기의 원인</p>
							<p>두드러기가 생기면 먼저 원인을 찾아봐야 합니다. 두드러기가 발병하기 전에 먹었던 음식이나 약물을 알아봅니다. <br>
							혹은 햇빛 노출이나 온도차에 의한 한냉 두드러기 등의 물리적 두드러기도 있는지 확인해야 합니다.</p><br/>
						<p class="aTit">특이성 두드러기의 종류</p>
							<p>
								<img src="/EyeMOM/resources/img/sick/sub5_img2.gif">
							</p><br/>
						
						<p class="aTit">특이성 두드러기 치료</p>
							<p>
								특이성 두드러기는 외부 환경에 의해서 촉발됩니다.<br>
먼저 이러한 음식이나 환경을 제거해야 하고, 구토나 설사가 동반된다면 식중독을 의심할 수 있습니다. <br>
<br> 
								아기들은 면역력이 약해 외부의 변화에 능동적으로 대처하기 힘듭니다. 대개는 나이가 들면서 면역력을 획득하여 저절로 없어집니다. <br>
								다만 6개월 이상 지속되는 만성 두드러기는 면역력을 높여주는 치료를 해야지만 바르게 잘 성장합니다.
							</p>
	</div>
				</div><br/><br/>
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