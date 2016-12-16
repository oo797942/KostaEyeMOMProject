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
					<div class="d_con">
					<ul class="d_list2">
						<li>지루성피부염이란?
							<p>
								신생아의 경우 엄마의 호르몬 영향으로 피지분비가 많습니다. 따라서 생후 1개월~3개월 사이에 주로 나타납니다. <br> 
								지루성피부염은 <u>피지선이 많은 두피, 귀, 얼굴, 목부분에 가장 많이 생기는 염증성 피부질환</u>입니다. <br>
								그 외에도 살이 접히는 부분 - 서혜부나 겨드랑이에도 나타납니다.
							</p>
						</li>
						<li>지루성피부염의 증상
							<p><span class="t_col">처음에는 피부가 붉게 되다가 일정시간이 지나면서 노란색의 딱지가 앉게 됩니다.</span>  <br>
							심하면 가려움증을 동반하며 이로 인해 2차 세균감염으로 곪으면서 진물이 흐를 수 있습니다.  <br>
							아토피피부염이나 건선과 혼돈하기 쉬우나 아토피피부염보다는 가려움증이 덜하고 건선처럼 건조하면서 인설이 일어나지는 않습니다.</p>
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