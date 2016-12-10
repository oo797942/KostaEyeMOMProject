<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="/EyeMOM/resources/css/header.css" rel="stylesheet"	type="text/css" />
<link rel="stylesheet" href="/EyeMOM/resources/css/popupStyle.css">
<link rel='stylesheet' href='/EyeMOM/resources/css/loginStyle.css'>
<link href="/EyeMOM/resources/css/jquery.bxslider.css" rel="stylesheet" type="text/css"/>
<link href="/EyeMOM/resources/css/home.css" rel="stylesheet" type="text/css" />
<link href="/EyeMOM/resources/css/footer.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/EyeMOM/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="/EyeMOM/resources/js/jquery.bxslider.min.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
<script type="text/javascript" src="/EyeMOM/resources/js/home.js"></script>
<script type="text/javascript">
	function login(){
		
		$.ajax({
	        url: "login.do",
	        type: 'GET',
	        data : { "u_id" : $("#u_id").val(),
	        	"u_pass" : $("#u_pass").val()	},
	       	success: function(result){
	       	  
	       		if(result=="0"){
	       			location.reload();
	       			
	        	 }else{ alert("아이디와 비밀번호를 확인하세요");} 
	        		
	           },
	       error:function(err){
	    	   alert(err);
	       }
	           });
	}
	$(function(){
		
	// Example 1: From an element in DOM
	$('.open-popup-link').magnificPopup({
	  type:'inline',
	  midClick: true // allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
	});

	// Example: 2 Dynamically created
	$('button').magnificPopup({
	  items: {
	      src: '<div class="white-popup">Dynamically created popup</div>',
	      type: 'inline'
	  },
	  closeBtnInside: true
	});
	})
</script>
<div class="body">

	<header>
		<table id="mainTopTable" cellspacing="0">
			<tr id="mainTopUtilTr">
				<td id="mainTopLeftTd">
				</td>
				<td id="mainTopRightTd"><a href="gojoin.do"><img
						src="/EyeMOM/resources/img/sign_up.png" class="toplogo_btn"
						id="sign_upBtn" /></a> <img src="/EyeMOM/resources/img/find.png"
					class="toplogo_btn" id="findBtn" /> 
					  <a href="#test-popup" class="open-popup-link"><img
					src="/EyeMOM/resources/img/login.png" class="toplogo_btn"
					id="loginBtn" /></a></td>
			</tr>
			<tr>
				<td colspan="2" id="MainLogoTd">로고</td>
			</tr>
			<tr>
				<td colspan="2" id="mainTopMenuBar"><img
					src="/EyeMOM/resources/img/menu.png" id="mainTopMenuBarImg">
					<input type="text" id="searchInput" autocomplete="off"
					placeholder="검색어를 입력해주세요" /> <a id="searchBtnA"> <img
						src="/EyeMOM/resources/img/scope.png" class="SearchBtn"></a></td>
			</tr>
			<tr>
				<td colspan="2" id="mainTopMenuImg">
					<ul class="subs" id="menu">
						<br />
						<li class="lifont">엄빠네
							<ul>
								<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
								<li><a href="tip">· 육아꿀팁</a></li>
								<li><a href="qna_board">· 묻고 말하기</a></li>
								<li><a href="kid_sick">· 아이가 아파요</a></li>
								<li><a href="rice">· 아이의 식단</a></li>
								<li><a href="baby">· 아이자랑</a></li>
							</ul>
						</li>
						<li class="lifont lileft">아이네
							<ul>
								<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
								<li><a href="#">· 놀아봐요</a></li>
								<li><a href="#">· 공부해요</a></li>
								<li><a href="#">· 춤을춰요</a></li>
							</ul>
						</li>
						<li class="lifont lileft">우리동네
							<ul>
								<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
								<li><a href="place.do?keyword=키즈카페">· 키즈카페</a></li>
								<li><a href="place.do?keyword=문화센터">· 문화센터</a></li>
								<li><a href="place.do?keyword=놀이터">· 놀이터</a></li>
								<li><a href="place.do?keyword=병원">· 병원</a></li>
							</ul>
						</li>
						<li class="lifont lileft">엄빠시장
							<ul>
								<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
								<li><a href="#">· 공동구매</a></li>
								<li><a href="#">· 중고장터</a></li>
								<li><a href="#">· 아나바다</a></li>
							</ul>
						</li>
					</ul> <img src="/EyeMOM/resources/img/hasi.png" id="mainMenuImg">
				</td>
			</tr>
		</table>

	</header>
	<section>
		<div style="background: #ffa07a; width: 100%; height: 30px;"></div>

		<div id="slide_div">
			<div id="banner_wrap">
				<ul id="slide_banner">
					<li><img class="slide" src="/EyeMOM/resources/img/hasi.png"
						alt="사진1" /></li>
					<li><img class="slide"
						src="/EyeMOM/resources/img/asdasdasd.png" alt="사진2" /></li>
					<li><img class="slide" src="/EyeMOM/resources/img/find.png"
						alt="사진3" /></li>
					<li><img class="slide" src="/EyeMOM/resources/img/go_top.png"
						alt="사진4" /></li>
					<li><img class="slide"
						src="/EyeMOM/resources/img/go_bottom.png" alt="사진5" /></li>
				</ul>
			</div>
			<table border="1" cellspacing="0" id="slideMenu">
				<tr>
					<td>게임</td>
				</tr>
				<tr>
					<td>댄스</td>
				</tr>
				<tr>
					<td>겅부</td>
				</tr>
			</table>
		</div>

		

		<div id="mainMiddle">
			<table id="tabmenutable" cellspacing="0">
				<tr id="tabmenuTr">
					<td class="selectnow menubtn" rel="menu1" lin="link1">공지사항</td>
					<td class="noselect menubtn" rel="menu2" lin="link2">으앙아팡</td>
				</tr>
				<tr id="tabcontenttr">
					<td colspan="2">
						<ul id="menu1" class="menucontent">
							<li>[12-08] <a href="#">제목이몇글자까지되는거야</a></li>
							<li>[12-07] <a href="#">title title title title title</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
							<li>[12-07] <a href="#">ddd</a></li>
						</ul>

						<ul id="menu2" class="menucontent">
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
							<li><a href="#">ddd</a></li>
						</ul>
					</td>
				</tr>
				<tr id="tablink">
					<td colspan="2">
						<div class="tablinks" id="link1">
							<br />공지사항 바로가기
						</div>
						<div class="tablinks" id="link2">
							<br />으앙아팡 바로가기
						</div>
					</td>
				</tr>
			</table>

			<table id="groupBuyTable" cellspacing="0">
				<caption>
					<label>공동구매 최신 글 <span><a class="alink">더보기</a></span></label>
				</caption>
				<tr>
					<c:forEach var='purchaseVO' items='${purchaseList}'>
					<td>
					<img src="/EyeMOM/resources/img/${purchaseVO.we_photo1name }" class="groupImg" />
					<a class="goGroupBuy"><b>[${purchaseVO.we_title }]</b></a>
					<br />
					<fmt:formatNumber value="${purchaseVO.we_price}" pattern="#,###.##"/>원
					<br />
					<hr color="#ffa07a" />
					<c:set var="human" value="${purchaseVO.we_maxsold - purchaseVO.we_sold }" />
					<c:choose>
					<c:when test="${human gt 0}">
					인원: ${human }명<br />
					</c:when>
					<c:otherwise>
					<b style="color: red;">마감</b><br/>
					</c:otherwise>
					</c:choose>
					<b>구매기간</b><br />
					${purchaseVO.we_start } ~<br /> ${purchaseVO.we_end }
					</td>
					</c:forEach>
				</tr>
			</table>

		</div>

<div id="qnacookdiv">

			<table id="qnacooktable" cellspacing="0">
				<tr id="qnacooktableheader">
					<td id="headerqna">
						<b>묻고 답하기</b>
						<span><a href="qna_board" class="alink">더보기</a></span>
					</td>
					<td id="headercook">
					</td>
				</tr>
				<tr>
					<td class="qnatd" rowspan="2">
						<div id="qnadiv">
						<img src="/EyeMOM/resources/img/hasi.png" id="qnaimg">
						<c:forEach var='qnaVO' items='${qnaList}'>
						<p class="qnap">[${qnaVO.in_point }] <a class="alink">${qnaVO.in_title }</a></p>
						</c:forEach>
						</div>
					</td>
					<td class="cooktd" id="cookhover">
					<b>베스트 레시피</b>
						<span><a class="alink" id="cookmore">더보기</a></span>
						<img src="/EyeMOM/resources/img/cook_4.png" class="cookimg" id="cookimg4" rel="cookul4">		
						<img src="/EyeMOM/resources/img/cook_3.png" class="cookimg" id="cookimg3" rel="cookul3">
						<img src="/EyeMOM/resources/img/cook_2.png" class="cookimg" id="cookimg2" rel="cookul2">
						<img src="/EyeMOM/resources/img/cookon_1.png" class="cookimg" id="cookimg1" rel="cookul1">
					</td>
				</tr>
				<tr>
					<td class="cooktd" id="cookcontent">
						<img src="/EyeMOM/resources/img/hasi.png" id="cookcontentimg">
						<ul class="cookul" id="cookul1">
							<li>[2016-12-08] <a class="alink">1초라도 안보이면 2렇게 초조한데 3초는 어떻게 기다려 이야이야이야이야 4랑해 널 4랑해 5늘은 말할거야 6십억 지구에서 널만난건 7럭키야</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
						</ul>
						<ul class="cookul" id="cookul2">
							<li>[2016-12-08] <a class="alink">2초라도 안보이면 2렇게 초조한데 3초는 어떻게 기다려 이야이야이야이야 4랑해 널 4랑해 5늘은 말할거야 6십억 지구에서 널만난건 7럭키야</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
						</ul>
						<ul class="cookul" id="cookul3">
							<li>[2016-12-08] <a class="alink">3초라도 안보이면 2렇게 초조한데 3초는 어떻게 기다려 이야이야이야이야 4랑해 널 4랑해 5늘은 말할거야 6십억 지구에서 널만난건 7럭키야</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
						</ul>
						<ul class="cookul" id="cookul4">
							<li>[2016-12-08] <a class="alink">4초라도 안보이면 2렇게 초조한데 3초는 어떻게 기다려 이야이야이야이야 4랑해 널 4랑해 5늘은 말할거야 6십억 지구에서 널만난건 7럭키야</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
							<li>[2016-12-08] <a class="alink">1</a></li>
						</ul>
					</td>
				</tr>
			</table>

		</div>

	</section>
	<footer>
		<jsp:include page="../template/default/footer.jsp" />
	</footer>

</div>



<!-- Popup itself -->

	
<div id="test-popup" class="white-popup mfp-hide">
	<div id="clouds">
		<div class="cloud x1"></div>
		<!-- Time for multiple clouds to dance around -->
		<div class="cloud x2"></div>
		<div class="cloud x3"></div>
		<div class="cloud x4"></div>
		<div class="cloud x5"></div>
		<div class="cloud x6"></div>
	</div>
<div class="container00">
		<div id="login">
			<form method="post"  onclick='return false'>
					<p>
						<span class="fontawesome-user"></span><input type="text"
							id="u_id"  name="u_id" value="aaa" style="color: white;"
							onBlur="if(this.value == '') this.value = 'Username'"
							onFocus="if(this.value == 'Username') this.value = ''" required>
					</p>
					<!-- JS because of IE support; better: placeholder="Username" -->
					<p>
						<span class="fontawesome-lock"></span><input type="password"
							id="u_pass" name="u_pass" value="aaa" style="color: white;"
							onBlur="if(this.value == '') this.value = 'Password'"
							onFocus="if(this.value == 'Password') this.value = ''" required>
					</p>
					<!-- JS because of IE support; better: placeholder="Password" -->
					<p>
						<input type="submit" onclick="login()" id="loginbtn" value="로그인">
					</p>
			</form>
			<label id="info"></label>
			<p>
				회원이 아니십니까? <a href="#" class="blue">회원가입하기</a><span
					class="fontawesome-arrow-right"></span>
			</p>
		</div>
		<!-- end login -->
	</div>
</div>
	<!-- end popup -->
