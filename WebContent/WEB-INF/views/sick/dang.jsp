<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="/EyeMOM/resources/css/sick/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="/EyeMOM/resources/css/sick/c4.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.side{
	font-size: 15px;
	font-weight: bold;
	color: #ffa07a;
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
  				<div class="elements1">
  					<a class="side" href="josuk.do" > － 성조숙증</a><br/>
  					<a class="side" href="biman.do" > － 소아비만</a><br/>
  					<a class="side" href="dang.do" style="background-color: red; padding-right: 60px;"  > － 소아당뇨</a><br/>
  				
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
 					<a class="side" href="#" > － 틱장애</a><br/> 					
 					<a class="side" href="#" > － ADHD</a><br/> 					
  				</div>
  				</div>
		</td>
			
			<td class="scribeTd" width="840px;">
					<div class="child bg4">
					<p class="chL_tit">당뇨병이란?</p>
					<p class="chL_txt">우리 몸속의 혈당은 인슐린이라는 호르몬에 의해서 작용됩니다. <br>
						탄수화물을 섭취한 후에 흡수된 포도당은 혈액에서 혈당으로 존재합니다.<br>
혈액속에 혈당이 
						많아지면 췌장에서 인슐린을 분비하여 혈당을 세포로 들어가게 합니다. <br>
						이 포도당이 세포에서 에너지 원으로 이용될 수 있습니다.
						</p>
						&nbsp;<p class="chL_txt">
						인슐린이 작용을 못할 경우 포도당이 세포속으로 들어갈 수 없기 때문에<br>
밥 혹은 각종 
						탄수화물 음식을 먹어도 포도당을 에너지로서 사용할 수 없습니다. <br>
						따라서 몸속에서 대체 에너지를 제공하기 위해서 간에서는 '케톤'이라는<br>
산성 물질을 생산하고 
						이 물질들이 혈액에 많아지게 됩니다. <br>
						<br>
						이 과정이 반복되면 '케톤산혈증'이 발생되어 혈액이 비정상적으로 산성이 되고,<br>
심해지면 심장, 
						혹은 신경계에 영향을 주어 생명을 위협할 수도 있습니다. 
						</p>
						&nbsp;<p class="chL_txt pb30">
						이외에 만성적으로 생기는 <u>합병증</u>을 유발합니다.<br>
<span>눈의 망막병증(시력저하, 시력상실), 혈관질환(뇌졸증, 심근경색, 말단부 궤양-괴사),<br>
신장병(부종, 신부전), 신경병증(손발 저림, 각종 신체 
						통증), 피부 가려움증 등이 발병</span>할 수 있습니다.
						</p><br/>
					<p class="chL_tit">소아당뇨란?</p>
					<p class="chL_txt">
						<span>- 1형당뇨 :</span> 췌장에서 인슐린이 전혀 분비되지 않거나 매우 적은 양만 분비됨 (인슐린 의존형 당뇨)<br>
						<span>- 2형당뇨 :</span> 분비된 인슐린이 제대로 기능을 하지 못함. 주로 성인형 당뇨 (인슐린 비의존형 당뇨)
					&nbsp;</p>
					&nbsp;<p class="chL_txt">1형 당뇨의 경우 흔히 소아-청소년기에 나타나는 당뇨병의 종류입니다.<br>
					하지만 최근 비만 인구가 증가하고, 잘못된 식생활과 생활습관으로 인하여 성인형 당뇨병인 2형 당뇨가 소아-청소년기에 발생되는 경우가 많아지고 있습니다. 
					</p>
				</div><br/>
				
								<div class="child bg4">
					<p class="chL_tit">Tip</p>
					 <p class="chL_txt">
					 <span>1형 당뇨 :</span> 아이가 태어나면서부터 생긴 췌장 기능이 '제로'가 아니라면 췌장기능이 정상화 될 수 있도록 아이를 도와주어야 합니다. 
							또한 적은 양의 인슐린으로 큰 효과를 낼 수 있도록 만들어 주어야 합니다.<br>
단순히 인슐린 주사에 의지하는 것에서 벗어나, 
						인슐린 효율을 높일 수 있도록 아이의 몸을 바꿔주는 것을 치료 목표로 합니다.<br>
					  또한 건강한 식생활과 생활습관을 강조하여 좀 더 나은 치료 방법을 제시하고 있습니다. 
					  &nbsp;</p>
						<p class="chL_txt">	<span>2형 당뇨 :</span> 아이에게 2형 당뇨가 발병한 경우 성인 당뇨병과 같이 각종 합병증의 위험이 점점 높아지게 됩니다. <br>
							또한 성인 당뇨로 남게될 가능성이 높기 때문에 조기부터 꾸준한 치료가 필요합니다.<br>
                        <span class="type1">&nbsp;</span>또한 당뇨병을 가진 소아도 건강한 아이들과 마찬가지로 
								성장과 발육에 필요한 충분한 영양을 섭취해야 합니다.<br>
                      <span class="type1">&nbsp;</span>적절한 치료와 함께 아이의 혈당 관리을 도와주어야 합니다. </p>
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