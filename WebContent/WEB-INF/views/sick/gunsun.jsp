<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/EyeMOM/resources/css/sick/nanumgothic.css" rel="stylesheet" type="text/css">
<link href="/EyeMOM/resources/css/sick/c2.css" type="text/css" rel="stylesheet">
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
			
			<td class="scribeTd" >
					<div class="d_con con2">
					<ul class="d_list2">
						<li>건선이란?
							<p>
								건선은 <u>은백색 비듬같은 인설과 붉은 발진이 반복적으로 나타나는 피부질환</u>입니다. 아토피 피부염과는 달리 가려움증이 심하지는 않습니다.  <br>
								무릎과 팔꿈치등 외부자극에 쉬운 부분에 많이 생기지만 머리나 몸통 같은 곳에서도 나타납니다.<br>
건선은 피부가 건조해지는 
								증상이 있으며 가을과 겨울철에 심해집니다.  <br>
								임상적인 증상으로 진단을 내리기도 하나 조직 검사로 확진하게 됩니다.
							</p>
						</li>
						<li>건선의 원인 
							<p>건선의 원인은 현대의학에서 밝혀진 바는 없습니다. <br>
							다만 <span class="t_col">면역세포의 활성도가 증가되어<br>
이 물질이 피부를 자극</span>하여 생긴다고 보고 있습니다. <br>
							<br>
							본 한의원에서는 영유아의 건선의 경우,<br>
대개 태열에 의해 열독이 피부에 
							정체되어 나타나는 증상으로 보고 치료합니다.<br>
따라서 아기들의 몸속에 있는 화기(火氣)를 
							내려주어<br>
스스로 피부호흡을 할 수 있는 몸상태로 되돌려줍니다.</p>
						</li>
					</ul>
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