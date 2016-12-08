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
				<td id="mainTopRightTd"><a href="gojoin.do"><img
						src="/EyeMOM/resources/img/sign_up.png" class="toplogo_btn"
						id="sign_upBtn" /></a> <img src="/EyeMOM/resources/img/find.png"
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

		<div id="qnacookdiv">

			<table id="qnacooktable" cellspacing="0">
				<tr id="qnacooktableheader">
					<td id="headerqna">
						<b>묻고 답하기</b>
						<span><a href="qna_board" class="alink">더보기</a></span>
					</td>
					<td id="headercook">
						<span><a class="alink">더보기</a></span>
					</td>
				</tr>
				<tr>
					<td class="qnatd" rowspan="2">
						<div id="qnadiv">
						<img src="/EyeMOM/resources/img/hasi.png" id="qnaimg">
						<p class="qnap">[100] <a class="alink">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a></p>
						<p class="qnap">[100] <a class="alink">ㅇㅇㅇ</a></p>
						<p class="qnap">[80] <a class="alink">ㅇㅇㅇ</a></p>
						</div>
					</td>
					<td class="cooktd" id="cookhover">
						<img src="/EyeMOM/resources/img/cook_1.png" class="cookimg" id="cookimg1" rel="cookul1">
						<img src="/EyeMOM/resources/img/cook_2.png" class="cookimg" id="cookimg2" rel="cookul2">
						<img src="/EyeMOM/resources/img/cook_3.png" class="cookimg" id="cookimg3" rel="cookul3">
						<img src="/EyeMOM/resources/img/cook_4.png" class="cookimg" id="cookimg4" rel="cookul4">		
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
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg1" /> <a class="goGroupBuy"><b>[상품이름]</b></a> <br />
						123,456원<br />
						<hr color="#ffa07a" /> 인원: 6명<br /> <b>구매기간</b><br /> 2016년 12월
						7일 ~<br /> 2016년 12월 9일</td>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg2" /> <a class="goGroupBuy"><b>[상품이름]</b></a><br />
						123,456원<br />
						<hr color="#ffa07a" /> 마감<br /> <b>구매기간</b><br /> 2016년 12월 7일
						~<br /> 2016년 12월 9일</td>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg3" /> <a class="goGroupBuy"><b>[상품이름]</b></a><br />
						123,456원<br />
						<hr color="#ffa07a" /> 마감<br /> <b>구매기간</b><br /> 2016년 12월 7일
						~<br /> 2016년 12월 9일</td>
					<td><img src="/EyeMOM/resources/img/hasi.png" class="groupImg"
						id="groupImg4" /> <a class="goGroupBuy"><b>[상품이름]</b></a><br />
						123,456원<br />
						<hr color="#ffa07a" /> 인원: 6명<br /> <b>구매기간</b><br /> 2016년 12월
						7일 ~<br /> 2016년 12월 9일</td>
				</tr>
			</table>

		</div>

		<div id="mainbottom"></div>


	</section>
	<footer>
		<jsp:include page="../template/default/footer.jsp" />
	</footer>

</div>



<!-- 			<div id="middlesick"> -->
<!-- 				<p>자주 검색하는 질병</p> -->
<!-- 				<ol> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 					<li>자주 검색한 질병</li> -->
<!-- 				</ol> -->
<!-- 			</div> -->
