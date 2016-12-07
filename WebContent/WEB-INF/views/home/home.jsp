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
								<li><a href="육아꿀팁">· 육아꿀팁</a></li>
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
			<div id="middlesick">
				<p>자주 검색하는 질병</p>
				<ol>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
					<li>자주 검색한 질병</li>
				</ol>
			</div>
			<table id="groupBuyTable" cellspacing="0">
				<caption>
					<label>공동구매 최신 글</label>
				</caption>
				<tr>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg1" /> <b>[상품이름]</b><br /> 123,456원<br />
						<hr color="#808080" /> 인원: 6명<br /> <b>구매기간</b><br /> 2016년 12월
						7일 ~<br /> 2016년 12월 9일</td>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg2" /> <b>[상품이름]</b><br /> 123,456원<br />
						<hr color="#808080" /> 마감<br /> <b>구매기간</b><br /> 2016년 12월 7일 ~<br />
						2016년 12월 9일</td>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg3" /> <b>[상품이름]</b><br /> 123,456원<br />
						<hr color="#808080" /> 마감<br /> <b>구매기간</b><br /> 2016년 12월 7일 ~<br />
						2016년 12월 9일</td>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg4" /> <b>[상품이름]</b><br /> 123,456원<br />
						<hr color="#808080" /> 인원: 6명<br /> <b>구매기간</b><br /> 2016년 12월
						7일 ~<br /> 2016년 12월 9일</td>
				</tr>
			</table>
		</div>

		<div id="mainbottom">
			<div id="container">
				<ul class="tabs">
					<li class="active" rel="tab1">공지사항</li>
					<li rel="tab2">구매랭킹</li>
					<li rel="tab3">공지사항</li>
				</ul>
				<div class="tab_container">
					<div id="tab1" class="tab_content">
						<ul>
							<li><a href="#">이것은 두 번째 탭의</a></li>
							<li><a href="#">이것은 두 번째 탭의</a></li>
							<li><a href="#">이것은 두 번째 탭의</a></li>
							<li><a href="#">이것은 두 번째 탭의</a></li>
							<li><a href="#">이것은 두 번째 탭의</a></li>
						</ul>
					</div>
					<!-- #tab1 -->
					<div id="tab2" class="tab_content">2222Mortal Kombat returns
						after a lengthy hiatus and puts players back into the Tournament
						for 2D fighting with gruesome combat.</div>
					<!-- #tab2 -->
					<div id="tab3" class="tab_content">3333Halo: Reach is the
						culmination of the superlative combat, sensational multiplayer,
						and seamless online integration that are the hallmarks of this
						superb series.</div>
					<!-- #tab3 -->
				</div>
				<!-- .tab_container -->
			</div>
			<!-- #container -->
		</div>


	</section>
	<footer>
		<jsp:include page="../../template/default/footer.jsp" />
	</footer>

</div>
