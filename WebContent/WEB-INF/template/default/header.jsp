<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
		<img src="/EyeMOM/resources/img/top_logo.png" id="toplogo_menu">
		<img src="/EyeMOM/resources/img/login.png" class="toplogo_btn"
			id="loginBtn" /> <img src="/EyeMOM/resources/img/sign_up.png"
			class="toplogo_btn" id="sign_upBtn" /> <img
			src="/EyeMOM/resources/img/find.png" class="toplogo_btn" id="findBtn" />
		<img src="/EyeMOM/resources/img/mypage.png" class="toplogo_btn2"
			id="mypageBtn" /> <img src="/EyeMOM/resources/img/logout.png"
			class="toplogo_btn2" id="logoutBtn" /> <span class="toplogo_btn2">ㅇㅇㅇ님
			환영합니다!</span>
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