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
  				<div class="elements1">
  					<a class="side" href="josuk.do" > － 성조숙증</a><br/>
  					<a class="side" href="biman.do" style="background-color: red; padding-right: 60px;" > － 소아비만</a><br/>
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
		<div class="child ">
					<p class="chL_tit">소아비만이란?</p>
					<p class="chL_txt pb30">아이의 비만은 <u>체지방과 근육량, 몸무게와 키를 함께 고려하여 진단</u>합니다.<br>
						※ 외모나 체중보다는 정확한 체지방 비율을 분석하는 것이 중요합니다.
					</p>
					<p class="chL_tit2 ">참조표</p>
					<div class="ch_tb">
						<table cellpadding="0" cellspacing="0" class="">
							<caption></caption>
							<colgroup>
								<col width="25%"><col width="25%"><col width="50%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">연령</th>
									<th scope="col">체중(kg)</th>
									<th scope="col">출생 시 체중에 대한 배수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>출생</td>
									<td>3.3</td>
									<td>1</td>
								</tr>
								<tr>
									<td>3개월</td>
									<td>6.6</td>
									<td>2</td>
								</tr>
								<tr>
									<td>1년</td>
									<td>10</td>
									<td>3</td>
								</tr>
								<tr>
									<td>2년</td>
									<td>13</td>
									<td>4</td>
								</tr>
								<tr>
									<td>4년</td>
									<td>16</td>
									<td>5</td>
								</tr>
								<tr>
									<td>6년</td>
									<td>20</td>
									<td>6</td>
								</tr>
								<tr>
									<td>10년</td>
									<td>30</td>
									<td>7</td>
								</tr>
							</tbody>
						</table>
					<p><strong>비만 : </strong>지방세포의 크기나 갯수가 증가하여 발생<br>
						&nbsp;&nbsp;&nbsp;&nbsp;<span>1. 갯수가 증가 : 소아-청소년기 비만에 나타나며 체중감량이 어렵다.</span><br>
						&nbsp;&nbsp;&nbsp;&nbsp;<span>2. 크기가 증가 : 성인비만에 나타나며 체중감량이 쉽다.</span>
				      <br>
                    </p>
					</div>
					<p class="chL_tit">어린 아이의 비만은 더욱 심각하다?</p>
					<ul class="chL_1">
						<li><u>소아 시기의 비만은 80~85%가 성인비만으로 옮겨지게 됩니다.</u> <br>
						  지방세포의 크기만 커지는 성인비만과 달리 소아-청소년기의 비만은 지방세포의 갯수도 함께 늘어납니다. 이 시기에는 성장이 빨라 지방세포수가 급격히 늘어나게 됩니다. 더욱 문제는 한번 생긴 지방세포는 살이 빠져도 줄어들지 않는다는 점입니다. </li>
						<li class="col">소아비만이 가장 많이 발생되는 시기는 ① 출생후부터 만2세까지 ② 5세~6세 ③ 사춘기 입니다. <br>
						과체중인 경우 이시기에는 특별히 관리가 필요합니다..</li>
					</ul>
					<p class="chL_tit">소아비만의 원인</p>
					<p class="chL_txt pb30">특정 질병에 의한 증후성비만은 1%미만입니다.<br>
거의 대부분의  소아비만은 음식의 잘못된 선택과 과다섭취, 활동량의 부족, 심리적인 요인 등에 의한 단순성 비만입니다.<br>
최근에는 부모의 유전적인 요인과 함께 환경적인 요인에 의한 비만이 늘어나고 있습니다.</p><br/>
					<p class="chL_tit">소아비만의 문제점</p>
					<div class="child2">
						<ul class="">
							<li>저성장 (혹은 성장장애) 및 성조숙증
<p>소아비만의 경우 골연령 증가, 성장판 조기 폐쇄로 인해 최종 키가 작을 수 있습니다.<br>
또한 호르몬 시스템이 교란되어 
									조기월경 등 성조숙증이 나타날 확률이 높아집니다.<br>
비만부위의 살트임, 피부 겹침에 의한 
									 부스럼 등 피부질환도 함께 나타납니다.
								</p>
								</li>
								<li>성인질환 유발
<p class="col">소아 당뇨를 비롯하여 아이의 성장 이후<br>
고지혈증, 지방간, 고혈압, 당뇨병 등
각종 성인병 
										위험도가 증가합니다.</p>
								</li>
									<li>정신-사회적인 문제
										<p class="col">소아기의 비만은 집단생활을 하면서 정신-사회적으로 불안정한 상태를 보이고 <br>
											감정적인 문제들을 발생하기도 합니다. <br>
											잘못된 사회적 반응으로 인한 폭식증이나 거식증 같은 식이 장애가 나타나기도 합니다.
										</p>
								</li>
						</ul>
					</div>
					<p class="chL_tit">소아비만의 치료</p>
					<ol class="">
						<li><img src="/EyeMOM/resources/img/sick/ch1.gif" alt="1"> 잘못된 음식물로 몸안에 쌓인 노폐물은 아이들에게 더욱 비만을 일으키는 음식물과 생활 습관을 찾게 만듭니다. 
							<span>기체증이 유발된 아이의 몸을 치료해주면 아이는 더욱 쉽게 식습관과 생활 습관을 바꾸어 줄 수 있습니다.<br>
또한 비만으로 인해 발생되는 성장장애, 우울증 또는 소아당뇨 등의 합병증을 예방하고 치료해 줄 수 있습니다.</span>
						&nbsp;</li>
						<li><img src="/EyeMOM/resources/img/sick/ch2.gif" alt="2"> 비만을 치료하는 과정에도 성장기 아이들은 발육에 필요한 음식들을 섭취해야 합니다. <br>
							<span>기름진 음식이라고 꼭 금해야 하는 것은 아닙니다. 반드시 줄여야 하는 음식과 반드시 먹어야 하는 음식이 있습니다.
							<br>
기름진 음식중 필수지방산이 함유된 음식은 매일 매끼니 먹어야 합니다. <br>
<br>
올바른 음식 구분은 아이가 즐겁고 맛있는 식생활로 비만을 벗어날 수 있도록 도와줍니다.<br>
통제된 식생활에 의한 비만치료는 성인 비만으로 재발되어 나타날 확률을 매우 줄여줍니다.</span>
						&nbsp;</li>
						<li><img src="/EyeMOM/resources/img/sick/ch3.gif" alt="3"> 키가 크는데 도움이 되는 운동을 하면 좋습니다. 특히 줄넘기가 많은 도움이 됩니다. <span>근력운동이나 편측운동을 위주로 하는 것은 바람직하지 않습니다.</span>
					  </li>
					</ol>
				</div><br/>
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