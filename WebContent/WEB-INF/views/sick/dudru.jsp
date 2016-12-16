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
						<li>영유아 두드러기란?
							<p>몸에 맞지 않은 음식이나 외부접촉에 의해 <u>피부가 알러지 반응을 해서 얼룩 모양의 붉은 반점</u>이 올라오는 질환입니다.
							</p>
						</li>
						<li>두드러기의 원인
							<p>두드러기가 생기면 먼저 원인을 찾아봐야 합니다. 두드러기가 발병하기 전에 먹었던 음식이나 약물을 알아봅니다. <br>
							혹은 햇빛 노출이나 온도차에 의한 한냉 두드러기 등의 물리적 두드러기도 있는지 확인해야 합니다.</p>
						</li>
						<li>특이성 두드러기의 종류
							<p>
								<img src="/EyeMOM/resources/img/sick/sub5_img2.gif">
							</p>
						</li>
						<li>특이성 두드러기 치료
							<p>
								특이성 두드러기는 외부 환경에 의해서 촉발됩니다.<br>
먼저 이러한 음식이나 환경을 제거해야 하고, 구토나 설사가 동반된다면 식중독을 의심할 수 있습니다. <br>
<br> 
								아기들은 면역력이 약해 외부의 변화에 능동적으로 대처하기 힘듭니다. 대개는 나이가 들면서 면역력을 획득하여 저절로 없어집니다. <br>
								다만 6개월 이상 지속되는 만성 두드러기는 면역력을 높여주는 치료를 해야지만 바르게 잘 성장합니다.
							</p>
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