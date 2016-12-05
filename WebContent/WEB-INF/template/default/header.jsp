<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="header">
	<nav>
	<input type="text" id="navSearchInput" placeholder="검색어를 입력해주세요.">
		<table id="navTable" cellspacing="0">
			<tr>
				<td><a href="#headerMenu"><img src="/EyeMOM/resources/img/go_top.png" class="navImg"></a></td>
				<td><a href="#footerInfo"><img src="/EyeMOM/resources/img/go_bottom.png" class="navImg"></a></td>
				<td><img src="/EyeMOM/resources/img/scope.png" class="navImg" id="navSearchBtn"></td>
			</tr>
		</table>
	</nav>
 	
	<p id="headerMenu">
<!-- 	세션 정보가 없을경우 로그인 버튼 show -->
	<c:choose>
    <c:when test="${empty sessionScope.user}">
		<img src="/EyeMOM/resources/img/top_logo.png" id="toplogo_menu">
	  <a href="#test-popup" class="open-popup-link">	<img src="/EyeMOM/resources/img/login.png" class="toplogo_btn"
			id="loginBtn"/></a>
			<a href="join.go" >
			 <img src="/EyeMOM/resources/img/sign_up.png"
			class="toplogo_btn" id="sign_upBtn" /> <img
			src="/EyeMOM/resources/img/find.png" class="toplogo_btn" id="findBtn" />
			</a>
 
	</c:when>
	<c:otherwise>	<!-- 세선정보가 있을경우 사용자 정보 show -->
		<img src="/EyeMOM/resources/img/mypage.png" class="toplogo_btn2"
			id="mypageBtn" /> <img src="/EyeMOM/resources/img/logout.png"
			class="toplogo_btn2" id="logoutBtn" /> <span class="toplogo_btn2">${ sessionScope.user.getU_name()}님
			환영합니다!</span>
	</c:otherwise>	
	</c:choose>
	</p>
	<hr style="margin-bottom: 5px;" color="#ffa07a" size="3px" />

	<ul id="nav">
		<li>
		<a id="menubar"> <img src="/EyeMOM/resources/img/menu.png" id="total_menu_btn"></a> 
		<input type="text" id="searchInput" autocomplete="off" placeholder="검색어를 입력해주세요" /> 
		<a id="searchBtnA"> <img src="/EyeMOM/resources/img/scope.png" class="SearchBtn"></a>
			<ul class="subs" id="menu">
				<br />
				<li class="lifont">엄빠네
					<ul>
						<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
						<li><a href="#">· 육아꿀팁</a></li>
						<li><a href="#">· 묻고 말하기</a></li>
						<li><a href="#">· 아이가 아파요</a></li>
						<li><a href="#">· 아이의 식단</a></li>
						<li><a href="#">· 아이자랑</a></li>
					</ul>
				</li>
				<li class="lifont lileft">아이네
					<ul>
						<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
						<li><a href="#">· 놀아봐요</a></li>
						<li><a href="#">· 공부해요</a></li>
						<li><a href="#">· 춤을 춰요</a></li>
					</ul>
				</li>
				<li class="lifont lileft">우리동네
					<ul>
						<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
						<li><a href="#">· 키즈카페</a></li>
						<li><a href="#">· 문화센터</a></li>
						<li><a href="#">· 놀이터</a></li>
						<li><a href="#">· 병원</a></li>
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
				<br />
				<br />
				<hr />
			</ul></li>

	</ul>

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
<div class="container">
		<div id="login">
			<form method="post" action='login.do'>
					<p>
						<span class="fontawesome-user"></span><input type="text"
							name="u_id" value="Username" style="color: whi	te;"
							onBlur="if(this.value == '') this.value = 'Username'"
							onFocus="if(this.value == 'Username') this.value = ''" required>
					</p>
					<!-- JS because of IE support; better: placeholder="Username" -->
					<p>
						<span class="fontawesome-lock"></span><input type="password"
							name="u_pass" value="Password" style="color: white;"
							onBlur="if(this.value == '') this.value = 'Password'"
							onFocus="if(this.value == 'Password') this.value = ''" required>
					</p>
					<!-- JS because of IE support; better: placeholder="Password" -->
					<p>
						<input type="submit" id="loginbtn" value="로그인">
					</p>
			</form>
			<p>
				회원이 아니십니까? <a href="#" class="blue">회원가입하기</a><span
					class="fontawesome-arrow-right"></span>
			</p>
		</div>
		<!-- end login -->
	</div>
</div>
	<!-- end popup -->
