<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/EyeMOM/resources/css/sick/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="/EyeMOM/resources/css/sick/c3.css" type="text/css" rel="stylesheet">
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
	border-left: 1px;
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

ul.d_list li {
    font-size: 16px;
/*     color: #e97e1d; */
    color: #333333;
/*     font-weight: bold; */
/*     padding-bottom: 35px; */
}

ul.d_list li p {
    font-weight: normal;
    padding-top: 15px;
}

.scribeTd{
    font-size: 13px;
    line-height: 18px;
    font-family: 'NanumGothic', '나눔고딕', 'Nanum Gothic','NanumGothicWeb', Dotum, sans-serif;
    font-size: 13px;
    line-height: 175%;
}

</style>
</head>
<body>
<div class="body">
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
			
			<td class="scribeTd" style="border-left: 3px;" >
		<div class="asthma">
					<div class="asthma1 bg">
						<p class="aTit">태열이란?</p>
							<p class="">
									아기가 <u>엄마 몸속에 있을 때 엄마의 노폐물에 해당하는 화기(火氣)에 영향을 받으면</u> 출산 후 여러 가지 피부증상을 일으킬 수 있습니다.<br>
<em>이러한 피부질환의 원인을 </em><u>‘태열’이라고 총칭</u>합니다. ‘태열’은 대개 성장하면서 자연적으로 몸 밖으로 배설됩니다.<br>
출생 후 1년 내에 두면부에 습진처럼 생겼다가 사라지게 됩니다. </p>
						
						태열로 나타나는 증상들 
							<p>엄마들이 태열이라고 말하는 증상으로는 습진이나 <br>
									<u>신생아 여드름, 아토피피부염, 지루성피부염</u> 이 있습니다.<br>
태열은 이러한 증상의 
									원인이 되는 인자로 피부로 발현될 경우<br>
영아습진으로 나타날 수 있는데 이는 아토피피부염이나<br>
지루성피부염을 포함합니다.</p>
							<p>
									다만 통상적으로 일시적인 붉은 뾰루지가 올라오면 습진이라 말합니다.<br>
습진이 만성화되거나 범위가 넓어지면서 아토피피부염이나<br>
지루성피부염으로 
									발전합니다.<br>
또한 태열로 인해서 백반증이나 건선, 잦은 땀띠도 나타납니다. </p>
						
						태열로 인한 피부질환의 추세 
							<p>근래에 들어 환경오염과 서구적 식생활, 아파트생활 등의 요인으로 인하여 <br>사춘기 이전의 아이들에게 피부질환이 많이 발생하고 있습니다. </p>
							<p>과거에는 발생이 됐다 하더라도 쉽게 호전되거나 자연적으로 사라지는<br>
경우가 많았으나 현재는 그렇지 못한 경우가 많아지고 있는 것이 여러 계통으로 보고되고 있습니다.  <br>
<em>그러나 원인 제거보다는 증상을 경감하는 대증 치료만을 받는 경우가 많습니다. </em></p>
					<p class="d_R"><img src="/EyeMOM/resources/img/sick/d_con.gif"></p>
				</div>
				</div>
			
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