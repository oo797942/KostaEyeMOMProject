<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="body">

	<header>
		<table id="mainTopTable" cellspacing="0">
			<tr id="mainTopUtilTr">
				<td id="mainTopLeftTd">
					<p>
						<a href="">시작 페이지로</a> <a
							href="javascript:addFavorite('아이맘','http://localhost:8080/EyeMOM/home.go');">북마크</a>
					</p>
				</td>
				<td id="mainTopRightTd"><img
					src="/EyeMOM/resources/img/sign_up.png" class="toplogo_btn"
					id="sign_upBtn" /> <img src="/EyeMOM/resources/img/find.png"
					class="toplogo_btn" id="findBtn" /> <img
					src="/EyeMOM/resources/img/login.png" class="toplogo_btn"
					id="loginBtn" /></td>
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
					</ul> <img src="/EyeMOM/resources/img/hasi.png" id="mainMenuImg">
				</td>
			</tr>
		</table>

	</header>
	<section>
			<div id="quickmenu1" class="quickmenu">1</div>
			<div id="quickmenu2" class="quickmenu">2</div>
			<div id="quickmenu3" class="quickmenu">3</div>
			<div id="quickmenu4" class="quickmenu">4</div>
	</section>
	<footer>
		<jsp:include page="../template/default/footer.jsp" />
	</footer>

</div>
