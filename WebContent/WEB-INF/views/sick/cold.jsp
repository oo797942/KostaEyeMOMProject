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
				<div class="cold_top">
	<div><img src="/EyeMOM/resources/img/sick/cold_top_img01.jpg"></div>
	<div><img src="/EyeMOM/resources/img/sick/cold_top_img02.jpg" name="cold_title" border="0" usemap="#cold_title_map" id="cold_title">
	</div>
	<div class="ptb60"><img src="/EyeMOM/resources/img/sick/cold_top_img03.jpg"></div>
	<div class="pb20"><img src="/EyeMOM/resources/img/sick/cold_top_img04.gif"></div><br/>
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