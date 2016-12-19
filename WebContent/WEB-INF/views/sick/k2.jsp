<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/EyeMOM/resources/css/sick/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="/EyeMOM/resources/css/sick/c5.css" type="text/css" rel="stylesheet">
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

li{
	list-style: none;
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
   						<a class="side" href="sick.do" > － 아토피피부염</a><br/>
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
			</form>
			</td>
			
			<td class="scribeTd" >
	<div class="atopic">
					<ul class="aLIst">
						<li>뇌전증(경기, 간질)의 정의
							<p>뇌조직의 기질적 병변 또는 기능적 장애로 인하여 <u>뇌신경 세포의 발작적인 방전으로 생기는 간헐적인 신경계의 장애</u>를 일으켜 <br>
							  여러 가지 신경증상, 의식상실, 경련, 감각장애를 일으키는 질환으로 <u>전간</u>이라도 합니다. 
							</p>
						</li>
						<li>원인 및 분류 
							<p>원인으로 분류하면 유전적 소인을 갖고<br>
뇌의 기질적 병변을 찾아 볼수 없는 
									원인불명의 <u>특발성 간질</u>과
출산때 뇌손상,<br>
두부외상, 뇌종양, 뇌출혈, 감염, 
알콜중독, 자간증 등이 원인되어<br>
뇌에 기질적 병변이 있는 <u>증후성 간질</u>이 있습니다. 
							</p>
							<p class="child"><img src="/EyeMOM/resources/img/sick/child.gif" ></p>
							<ol class="">
								<li><span>01.</span> 대발작
									<p>갑자기 의식을 잃고 소리를 크게 내며 쓰러져<br>
강직성과 간대성으로 경련을 
									수 분간 지속합니다.<br>
호흡근의 수축으로 호흡곤란과 청색증을 보이며, <br>
									타액 분비가 많아지고 혀를 물리거나 요실금을 보입니다. <br>
									<br>
									발작 후에는 혼수상태에 빠져 약2·5시간 깊은 수면에 빠진 뒤<br>
차츰 의식이 
									회복되면서 정신혼란과 두통 및 전신피로감올 호소합니다.
									</p>
								</li>
								<li><span>02.</span> 소발작
									<p>잠깐(수초)동안의 의식장애로 모든 활동이 중단되며,<br>
눈의 초점이 흐려져서 
										깜빡거리며 손가락이나 팔을 약간 움직입니다.<br>
때로는 입술을 빨거나 씹는 
										운동을 합니다.<br>
                                      <br>
                                      발작이 끝나면 즉시 정상으로 회복되나 환자는 발작을 의식하지 
										못합니다. 하루에 여러 번 발작할 수 있고, 빈번하면 뇌기능 손상이 옵니다. <br>
										과호흡으로 발작이 유발되며, 4~12세 사이에서 잘 발생합니다. 
									</p>
								</li>
								<li><span>03.</span> 정신운동성발작
								  <p>의식이 흐려지면서 목적없는 반복적 행동，즉 입술올 빨거나 씹고 또는 옷을 뜯는 등 매우 다양한 증상을 보입니다.<br>
때로는 환각이나 환시, 공포감으로 도주하거나, 
										낄낄 웃는 등의 증상이 수분간 지속됩니다.<br>
국부적 경련이나 대발작으로 발전하는 경우도 있습니다.<br>
병변은 뇌측두부에 있는 경우가 많습니다.<br>
<br>
운동성부분 발작은 
										뇌피질의 운동중추에 병변이 있어 해당 신체 부위에 경련이 있고 심하면 점차 온몸으로 경련이 파급됩니다.<br>
신체일부분에 경련이 국한될 때는 의식장애가 없으며, 
										때로는 경련이 있던 부위에 수시간 또는 수일 동안 마비가 올 때도 있습니다.
									</p>
								</li>
								<li><span>04.</span> 지각성부분 발작
									<p>뇌피질의 지각중추에 병변이 있을 때는 해당 신체부위의 지각장애, 즉 찌릿하거나 화끈한 감각을 수초내지 수분간 느낄 수 있습니다. </p>
								</li>
								<li><span>05.</span> 영아경축
									<p>2000-5000명의 신생아 중 한 명꼴로 발병하며 생후 3개월- 2세(특히 6개월 이하의 영아에서 호발)된 아기에게 뇌의 여러가지 병으로 올 수 있습니다. <br>
										남자가 여자보다 2배 호발하면 발작 모양에 따라 굴곡형, 신전형, 혼합형, 정지형으로 구분됩니다.<br>
사지와 몸통이 갑자기 수축되면서 의식이 흐려지고 창백해지며, 
										호흡곤란과 발한 등을 보입니다.<br>
										<br>
발작은 수초간 지속되며 하루에 수십 회(50-100회/day) 반복되는데, 조기진단으로 치료를 하지 않으면 저능아가 되기 쉽습니다. <br>
										나중에 부분 발작이나 대발작으로 발전될 수 있습니다.<br>
뇌파상 전형적인 hypsarrhythmia(극도로 불규칙한 뇌파) 소견을 보이며 대부분 3-4세가 되면 자연히 소멸되며, 다른 형태의 
										발작으로 이행하는 경우가 대부분입니다. 
									</p>
								</li>
								<li><span>06.</span> 대발작 지속상태
									<p>대발작이 의식을 회복하지 않고 계속 반복 발작하는 상태로서 응급치료를 하지 않으면 호흡 곤란과 저산소증으로 사망하는 경우가 있습니다.</p>
								</li>
							</ol>
						</li>
					</ul>
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