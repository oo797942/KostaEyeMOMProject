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
  				<div class="elements1">
  					<a class="side" href="cold.do" > － 잦은 감기</a><br/>
  					<a class="side" href="bi.do" > － 비염.축농증</a><br/>
  					<a class="side" href="chun.do" style="background-color: red; padding-right: 100px;" > － 천식</a><br/>
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
 					<a class="side" href="#" > － 틱장애</a><br/> 					
 					<a class="side" href="#" > － ADHD</a><br/> 					
  				</div>
  				</div>
		</td>
			
			<td class="scribeTd" width="840px;" >
		<div class="asthma">
					<div class="asthma1 bg">
						<p class="aTit">천식이란?</p>
						<p class="con">
							천식이란 폐 속에 있는 기관지가 아주 예민해진 상태로, 때때로 <em class="col">기관지가 좁아져서 숨이 차고 <br>
							가랑가랑하는 숨소리가 들리면서 기침을 심하게 하는 증상을 나타내는 병</em>을 말합니다. <br>
							<br>
							공기가 흐르는 길인 기관지의 염증으로 기관지 점막이 부어 오르고<br>
기관지 근육이 경련을							일으키면서
기관지가 막혀서 숨이 차게 됩니다.<br>
이런 증상들은 반복적으로, 발작적으로 나타나며 
							다양한 조건에 의해서 나타납니다.<br>
천식의 기본적인 병태생리는 기도 과민성과 기도폐쇄,<br>
그리고 
							이로 인한 혈액 가스 교환의 이상으로 요약할 수 있습니다.<br>
                          <br>
                          기도 과민성은 천식의 가장 특징적인 
							소견입니다. 기도 폐쇄는 기도 과민성에 의해 발생합니다. <br>
							천식 발작으로 기도 폐쇄를 초래하게 되고, 이는 대부분 환기 관류 불균형을 동반합니다. <br>
							<br>
						  폐쇄정도에 따라 다양한 호흡부전을 야기합니다.<br>
야간에 더욱 심하게 나타나고, 심한 발작이 있을 
							때는 무기폐, 폐기종, 기흉과 종격동 기종으로 진행하여 더욱 심한 호흡부전을 일으킵니다. 
						</p>
					</div>
					<div class="asthma2">
						<p class="aTit">천식의 원인</p>
						<p><img src="/EyeMOM/resources/img/sick/asthma2.gif"></p>
						<ul class="">
							<li>천식 촉발물질
									<span>집먼지, 진드기, 꽃가루, 동물 털이나 비듬, 바퀴벌레, 식품, 약물 등</span>
						  </li>
								<li>천식 악화요인
									<span>담배연기, 실내오염, 대기오염, 식품 첨가재, 운동 등 신체적 활동, 
									기후변화, 황사, 스트레스 등</span>
								</li>
					  </ul>
					</div>
					<div class="asthma1">
						<p class="aTit">천식의 증상</p>
						<p class="con">
							기관지 천식의 대표적인 증상은 <em class="col">호흡곤란, 기침, 천명(쌕쌕거리는 거친 숨소리)</em>입니다.<br>
이러한 증상이 반복적으로, 발작적으로 나타나지만 실제로 천식 환자는 
							전형적인 천식의 증상 외에 비전형적인 증상을 호소하는 경우도 많습니다.<br>
							<br>
즉, 호흡곤란이나 쌕쌕거리는 숨소리 등의 증상은 없고 단지 마른기침만 반복적으로 
							나타나는 경우,<br>
가슴이 답답하거나 흉부 압박감을 호소하는 경우 또는 목구멍에 가래가 걸려있는 것 같은 증상만을 호소하는 경우도 있습니다.<br>
일반적으로 감기에 
							걸린 후에 호흡곤란이 악화하거나, 달리기 같은 운동 후에 호흡곤란, 거친 숨소리 증상들이 많이 나타납니다. 
						</p>
						<p class="aTit">천식의 진단</p>
						<p class="con">
							천식은 특징적인 증상과 진찰 소견 및 여러 가지 검사로 진단되는데 일반적인 자가진단법은 다음과 같습니다.<br>
							<br>
							- 찬 공기, 흐린 날, 담배연기, 매연, 최루탄, 연탄가스, 음식 냄새, 페인트칠 냄새 등에 노출되면<br>
							 &nbsp;&nbsp;&nbsp;가슴이 답답하거나 숨이 차고 가랑가랑하는 숨소리가 들리거나 기침이 발작적으로 나곤 한다.<br>
							- 밤에 가슴이 답답하거나 숨이 차고 거친 숨소리가 들리거나, 기침이 발작적으로 나서 잠을 깬 적이 있다.<br>
							- 감기에 걸리면 숨이 차고 가랑가랑하는 숨소리가 들리거나, 기침이 한 달 이상 오래 지속된다.<br>
							- 운동 중에 혹은 운동 직후에 숨이 차고 가랑가랑한다.<br>
							- 직장에서 근무할 때에는 숨이 차고 가랑가랑하지만 휴가 때에는 괜찮다.<br>
							- 매년 봄이나 가을의 일정 기간에만 기침이 한 달 이상 지속되거나 숨이 차다.<br>
							- 시험 때나 정신적인 스트레스가 심할 때 숨이 차거나 가랑가랑한다.<br>
							- 가족 중에 천식이나 알레르기 비염 환자가 있고, 간혹 가슴이 답답하고 숨이 차다.<br>
							<br>
							위의 항목 중 해당하는 사항이 있으면 의사와 상의해야 합니다.<br>
							천식은 기도의 만성 염증에 의한 기도 과민성의 증가로 인한 가역적인 기도폐쇄를 특징으로 합니다. 
						</p>
					</div>
				</div>

				<div class="asthma1">
						<p class="aTit">천식의 치료</p>
					<p class="con">
						천식 중 소아들의 경우는 흔히 아토피피부염, 비염 등의 알러지질환이 같이 있는 경우가 흔합니다.<br>
소아는 성인에 비해 기도구경이 작고 기도 점액선 
							분비가 많으므로 기도가 조금만 좁아져도 호흡곤란 증상이 심하게 나타날 수 있습니다. <br>
							대개 3세 이후부터 전형적인 천식소견을 나타내며 이후 사춘기에 이르면 50%는 호전되기도 하나 심한 경우 성인까지 이어지기도 합니다.
<!-- 						&nbsp;</li> -->
						기관지 천식은 만성적이고 재발이 많은 질환입니다. <br>
							<u>따라서 증상을 잘 조절하고 폐기능을 정상화하여 일상생활을<br>
정상적으로 
							유지하도록 하는 것이 치료 목표</u>이며, 의사와 환자 간에 긴밀한 이해와 협조가 필요합니다.
</p><br/>
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