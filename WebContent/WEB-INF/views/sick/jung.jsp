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
				<div class="asthma">
					<div class="asthma1 bg2">
						<p class="aTit">중이염이란?</p>
						<p class="con">
							중이염은 소아에서 호흡기 감염 후 발생할 수 있는 가장 흔한 질환입니다.<br>
그리고 수술과 항생제를 사용하게 
							되는 가장 흔한 원인 질환입니다.<br>
6개월에서 2세까지 호발하고, 2세 이후에는 발생빈도가 급격히 감소합니다. <br>
							중이염은 감염과의 연관성에 따라 화농성과 비화농성으로 구분합니다. <br>
							<br>
<span class="pd">
				화농성인경우는 대체로 급격한 임상경과를 보여 급성 중이염(화농성 중이염)이라합니다.<br>
자주 재발하는 경우를 
							따로 분류하여 재발 급성 중이염이라고 부르기도 합니다. 
						  </span>
							<br>
							비화농성 중이염은 삼출분비물이 중이에 고이는 질환으로 삼출 중이염(분비 중이염)이라고 합니다. <br>
							기간에 따라 급성(3주 이하), 아급성(4주-3개월), 만성(3개월 이상)으로 나눌 수도 있습니다. 
						</p>
					</div>
					<div class="asthma1">
						<p class="aTit">중이염 분류와 증상</p><br/>
						<ol class="">
							<li><span>01.</span> 급성중이염
								<p>감기 바이러스도 원인이 될 수도 있지만 대부분 세균 감염과 동반되어 나타납니다. <br>
								이통, 이루, 보챔, 발열(30-50%), 어지러움, 설사, 구토 등의 증상이 생길 수 있습니다. </p>
							</li>
							<li><span>02.</span> 재발 급성 중이염 
								<p>중이염은 많은 경우에 자주 재발하게 되는데 6개월에 3-4회 이상 또는 1년에 6회 이상 재발하는 경우에는 재발 급성 중이염으로 분류합니다 <br>
								원인균을 완전히 퇴치하지 못한 경우와 다른 균에 의해 감염이 된 경우 재발합니다.<br>
치료 후 수일 안에 다시 증상이 나타나면 원인균을 완전히 퇴치하지 못한 것이고,<br>
2주가 지나 증상이 다시 나타나면 다른 균주에 의한 증상이 나타난 것입니다. </p>
							</li>
							<li><span>03.</span> 삼출중이염 
								<p>이통이나 발열 등의 급성 감염의 증상 없이 중이 내에 삼출액이 고이는 중이염으로, 청력 소실의 주요 원인이 됩니다.<br>
급성 증상(이통, 발열)이 없어 진단이  늦어 질
								수 있습니다. 청력감소로 인한 행동장애, 어지러움, 이명 등이 나타날 수도 있습니다.<br>
급성중이염 후에 나타나며, 대부분의 경우 3개월 내에 소실되나 10-25%에서는 
								중이내에 염증이 지속되기도 합니다. </p>

								<p>청력 감소가 주요 증상이지만, 소아에서는 다양한 증상으로 표출될 수도 있는데 잦은 중이염, 이통, 균형장애와 이명이 나타날 수 있습니다.  <br>
								장기간 염증이 지속되면 중이 구조의 변화, 고막이 탄성을 잃고 중이강으로 끌려가는 고막 함몰, 유착성 중이, 진주종이 형성됩니다.  <br>
								이들 증상은 언어, 인지, 심리발달에 영향을 주게 됩니다. </p>
							</li>
						</ol>
					</div>
				</div>

				<div class="box"><div class="box2">
	<div class="asthma1">
				<p class="aTit">중이염의 치료</p>
				</div>
					<p class="box_txt">
						어린 아이들이 중이염이 잘 생기는 이유는 해부학적인 구조에서 찾아 볼 수 있습니다. <br>
						귀의 안쪽과 코의 안쪽은 유스타키오관이라는 좁은 통로로 연결되어 있습니다.<br>
성인의 유스타키오관은 45도 각도로 코 안쪽이 더 낮게 형성되어 있어 
						코의 분비물이나 염증이 귀쪽으로 올라가기 쉽지 않은 구조입니다.<br>
하지만 아직 근육들의 발달이 완전하지 않은 소아들의 유스타키오관은 거의 수평에 
						가깝고 17-18mm로 길이가 짦습니다. <br><br>
						그래서 감기나 비염,축농증으로 코안에 분비물이 가득차면 귀쪽에 염증을 잘 일으키게 됩니다.  <br>
						따라서 중이염의 치료는 이 관이 막히지 않게 해주는 것이 중요합니다.<br>
중이염은 대개 귀를 치료해야 한다고 생각하지만 급성을 제외하고 만성으로 
						넘어가는 경우라면<br>
<strong> 코에 분비물이 과잉되게 쌓이는 것을 조절해야</strong>합니다.  <br> <br>
						코 속만 뚫어주면 귀에서 나오는 분비물은 유스타키오관을 통해 저절로 흘러 내려가게 되기 때문입니다.<br>
						<strong>중이염의 잦은 재발이나 만성화된 경우는 귀와 동시에 코쪽의 분비물이 잘 흘러가게 하는 치료를 병행해야 합니다.</strong>
					</p>
				</div></div><br/>
			
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