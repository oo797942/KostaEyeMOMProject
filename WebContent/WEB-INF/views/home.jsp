<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link href="/EyeMOM/resources/css/header.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="/EyeMOM/resources/css/popupStyle.css">
<link rel='stylesheet' href='/EyeMOM/resources/css/loginStyle.css'>
<link href="/EyeMOM/resources/css/jquery.bxslider.css" rel="stylesheet"
	type="text/css" />
<link href="/EyeMOM/resources/css/home.css" rel="stylesheet"
	type="text/css" />
<link href="/EyeMOM/resources/css/footer.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="/EyeMOM/resources/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="/EyeMOM/resources/js/jquery.bxslider.min.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
<script type="text/javascript" src="/EyeMOM/resources/js/home.js"></script>
<script type="text/javascript">
	function login() {

		$.ajax({
			url : "login.do",
			type : 'GET',
			data : {
				"u_id" : $("#u_id").val(),
				"u_pass" : $("#u_pass").val()
			},
			success : function(result) {
				if(result=="3"){
		       		location.href="adminMember.go";
		       	 }else if (result == "0") {
					location.reload();

				} else {
					alert("아이디와 비밀번호를 확인하세요");
				}

			},
			error : function(err) {
				alert(err);
			}
		});
	}
	$(function(){

				// Example 1: From an element in DOM
				$('.open-popup-link').magnificPopup({
					type : 'inline',
					midClick : true
				// allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
				});

				// Example: 2 Dynamically created
				$('button')
						.magnificPopup(
								{
									items : {
										src : '<div class="white-popup">Dynamically created popup</div>',
										type : 'inline'
									},
									closeBtnInside : true
								});
				$('.opop').mouseover(function(){
					$('.opop').removeClass('opa');
					$(this).addClass('opa');
				});
			});
			
			
			
</script>
<div class="body">

	<header>
		<table id="mainTopTable" cellspacing="0">
			<tr id="mainTopUtilTr">
				<td id="mainTopLeftTd"></td>
				<td id="mainTopRightTd"><c:choose>
						<c:when test="${empty sessionScope.user}">
							<a href="gojoin.do"> <img
								src="/EyeMOM/resources/img/sign_up.png" class="toplogo_btn"
								id="sign_upBtn" /></a>
							<img src="/EyeMOM/resources/img/find.png" class="toplogo_btn"
								id="findBtn" />
							<a href="#test-popup" class="open-popup-link"><img
								src="/EyeMOM/resources/img/login.png" class="toplogo_btn"
								id="loginBtn" /></a>
						</c:when>

						<c:otherwise>
							<!-- 세선정보가 있을경우 사용자 정보 show -->
							<a href="mypage.do"><img
								src="/EyeMOM/resources/img/mypage.png" class="toplogo_btn"
								id="mypageBtn" /> </a>
							<img src="/EyeMOM/resources/img/logout.png" class="toplogo_btn"
								id="logoutBtn" />
										<a href="messageBoard.do" >
											<c:if test="${sessionScope.user.getU_message() == 0}">
		<img  src="/EyeMOM/resources/img/message.png" class="toplogo_btn2" id="messageBtn">
		</c:if>
				<c:if test="${sessionScope.user.getU_message() > 0}">
		<img  src="/EyeMOM/resources/img/messageNew.png" class="toplogo_btn2" id="messageBtn">
		</c:if>
										</a>
							<span class="toplogo_btn" style="margin-right: 20px">${ sessionScope.user.getU_name()}님
								환영합니다!</span>
						</c:otherwise>
					</c:choose></td>
			</tr>
			<tr>
				<td colspan="2" id="MainLogoTd">
				<a href="home.go"><img src="/EyeMOM/resources/img/top_logo.png" id="toplogo_menu"></a>
				</td>
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
								<li><a href="tip.do?title=tip">· 육아꿀팁</a></li>
								<li><a href="qnaboard.do">· 묻고 말하기</a></li>
								<li><a href="sick.do">· 아이가 아파요</a></li>
								<li><a href="gal.do?title=rice">· 아이의 식단</a></li>
								<li><a href="gal.do?title=baby">· 아이자랑</a></li>
							</ul>
						</li>
						<li class="lifont lileft">아이네
							<ul>
								<li><hr class="menuhr" color="#ffa07a" size="3px" /></li>
								<li><a href="flashBoard.do">· 놀아봐요</a></li>
								<li><a href="studyBoard.do">· 공부해요</a></li>
								<li><a href="videoBoard.do">· 춤을춰요</a></li>
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
								<li><a href="shopping.do">· 공동구매</a></li>
								<li><a href="tip.do?title=used">· 중고장터</a></li>
								<li><a href="donation.do">· 아나바다</a></li>
							</ul>
						</li>
					</ul> <img src="/EyeMOM/resources/img/mainpic.jpg" id="mainMenuImg">
				</td>
			</tr>
		</table>

	</header>
	<section>
		<div style="background: #ffa07a; width: 100%; height: 30px;"></div>
		
		<div id="qnacookdiv">

			<table id="qnacooktable" cellspacing="0">
				<tr id="qnacooktableheader">
					<td id="headerqna"><b>묻고 답하기</b> <span><a
							href="qnaboard.do" class="alink">더보기</a></span></td>
					<td id="headercook"></td>
				</tr>
				<tr>
					<td class="qnatd" rowspan="2">
						<div id="qnadiv">
							<img src="/EyeMOM/resources/img/${qnaList[0].in_photo1name}" id="qnaimg">
							<c:forEach var='qnaVO' items='${qnaList}'>
								<p class="qnap">
									[${qnaVO.in_point }] 
									<c:choose>
									<c:when test="${empty sessionScope.user}">
									<a href="#test-popup" class="alink open-popup-link">${qnaVO.in_title }</a>
									</c:when>
									<c:otherwise>
									<a class="alink" href="qnaview.do?b_no=${qnaVO.b_no }">${qnaVO.in_title }</a>									
									</c:otherwise>
									
									</c:choose>
								</p>
							</c:forEach>
						</div>
					</td>
					<td class="cooktd" id="cookhover"><b>베스트 레시피</b> <span><a
						href="gal.do?title=rice"	class="alink" id="cookmore">더보기</a></span> <img
						src="/EyeMOM/resources/img/cook_4.png" class="cookimg"
						id="cookimg4" rel="cookul4"> <img
						src="/EyeMOM/resources/img/cook_3.png" class="cookimg"
						id="cookimg3" rel="cookul3"> <img
						src="/EyeMOM/resources/img/cook_2.png" class="cookimg"
						id="cookimg2" rel="cookul2"> <img
						src="/EyeMOM/resources/img/cookon_1.png" class="cookimg"
						id="cookimg1" rel="cookul1"></td>
				</tr>
				<tr>
					<td class="cooktd" id="cookcontent">
					<c:if test="${empty bestRice_r1[0].b_photo1name}">
					<img src="/EyeMOM/resources/img/noimage.png" id="cookcontentimg">
					</c:if>
					<c:if test="${not empty bestRice_r1[0].b_photo1name}">
					<img src="/EyeMOM/resources/img/${bestRice_r1[0].b_photo1name}" id="cookcontentimg">
					
					</c:if>
						<ul class="cookul" id="cookul1">
							<c:forEach var='r1' items='${bestRice_r1}'>
								<li>[${r1.b_date }] <c:choose>
										<c:when test="${empty sessionScope.user}">
											<c:if test="${not empty r1.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="${r1.b_photo1name }" href="#test-popup">
												[+${r1.b_good}] ${r1.b_title } </a>
											</c:if>
											<c:if test="${empty r1.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="noimage.png" href="#test-popup">
												[+${r1.b_good}] ${r1.b_title } </a>
											
											</c:if>
										</c:when>
										<c:otherwise>
											<c:if test="${not empty r1.b_photo1name }">
											<a class="alink bestrice" rel="${r1.b_photo1name }"
												href="boardview.do?b_no=${r1.b_no }"> [+${r1.b_good}]
												${r1.b_title } </a>
											</c:if>
											<c:if test="${empty r1.b_photo1name }">
											
											<a class="alink bestrice" rel="noimage.png"
												href="boardview.do?b_no=${r1.b_no }"> [+${r1.b_good}]
												${r1.b_title } </a>
											</c:if>
										</c:otherwise>
									</c:choose>
								</li>
							</c:forEach>
						</ul>
						<ul class="cookul" id="cookul2">
							<c:forEach var='r2' items='${bestRice_r2}'>
								<li>[${r2.b_date }] <c:choose>
										<c:when test="${empty sessionScope.user}">
											<c:if test="${not empty r2.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="${r2.b_photo1name }" href="#test-popup">
												[+${r2.b_good}] ${r2.b_title } </a>
											</c:if>
											<c:if test="${empty r2.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="noimage.png" href="#test-popup">
												[+${r2.b_good}] ${r2.b_title } </a>
											
											</c:if>
											
										</c:when>
										<c:otherwise>
											<c:if test="${not empty r2.b_photo1name }">
											<a class="alink bestrice" rel="${r2.b_photo1name }"
												href="boardview.do?b_no=${r2.b_no }"> [+${r2.b_good}]
												${r2.b_title } </a>
											</c:if>
											<c:if test="${empty r2.b_photo1name }">
											
											<a class="alink bestrice" rel="noimage.png"
												href="boardview.do?b_no=${r2.b_no }"> [+${r2.b_good}]
												${r2.b_title } </a>
											</c:if>
											
										</c:otherwise>
									</c:choose>
								</li>
							</c:forEach>
						</ul>
						<ul class="cookul" id="cookul3">
							<c:forEach var='r3' items='${bestRice_r3}'>
								<li>[${r3.b_date }] <c:choose>
										<c:when test="${empty sessionScope.user}">
											<c:if test="${not empty r3.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="${r3.b_photo1name }" href="#test-popup">
												[+${r3.b_good}] ${r3.b_title } </a>
											</c:if>
											<c:if test="${empty r3.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="noimage.png" href="#test-popup">
												[+${r3.b_good}] ${r3.b_title } </a>
											
											</c:if>
										</c:when>
										<c:otherwise>
											<c:if test="${not empty r3.b_photo1name }">
											<a class="alink bestrice" rel="${r3.b_photo1name }"
												href="boardview.do?b_no=${r3.b_no }"> [+${r3.b_good}]
												${r3.b_title } </a>
											</c:if>
											<c:if test="${empty r3.b_photo1name }">
											
											<a class="alink bestrice" rel="noimage.png"
												href="boardview.do?b_no=${r3.b_no }"> [+${r3.b_good}]
												${r3.b_title } </a>
											</c:if>
											
										</c:otherwise>
									</c:choose>
								</li>

							</c:forEach>
						</ul>
						<ul class="cookul" id="cookul4">
							<c:forEach var='r4' items='${bestRice_r4}'>
								<li>[${r4.b_date }] <c:choose>
										<c:when test="${empty sessionScope.user}">
											<c:if test="${not empty r4.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="${r4.b_photo1name }" href="#test-popup">
												[+${r4.b_good}] ${r4.b_title } </a>
											</c:if>
											<c:if test="${empty r4.b_photo1name }">
											<a class="alink bestrice open-popup-link"
												rel="noimage.png" href="#test-popup">
												[+${r4.b_good}] ${r4.b_title } </a>
											
											</c:if>
										</c:when>
										<c:otherwise>
											<c:if test="${not empty r4.b_photo1name }">
											<a class="alink bestrice" rel="${r4.b_photo1name }"
												href="boardview.do?b_no=${r4.b_no }"> [+${r4.b_good}]
												${r4.b_title } </a>
											</c:if>
											<c:if test="${empty r4.b_photo1name }">
											
											<a class="alink bestrice" rel="noimage.png"
												href="boardview.do?b_no=${r4.b_no }"> [+${r4.b_good}]
												${r4.b_title } </a>
											</c:if>
										</c:otherwise>
									</c:choose>
								</li>

							</c:forEach>
						</ul></td>
				</tr>
			</table>

		</div>
		<div style="  width: 100%; height: 30px;"></div>
		<div style=" border-top: 1px solid #e3e3e3; width: 100%; height: 30px;"></div>
		<div id="slide_div">
			<div class="banner_wrap gamebanner">
				<ul class="slide_banner" id="gamebanner">
					<c:forEach var='game' items='${gamebanner}'>
						<li><c:choose>
								<c:when test="${empty sessionScope.user}">
									<a class="alink bestrice open-popup-link" href="#test-popup">
								</c:when>
								<c:otherwise>
									<a
										onclick="window.open('flashBoardView.go?g_no=${game.g_no}', '${game.g_title}',
                   				'width=1050px,height=690');return false;">
								</c:otherwise>
							</c:choose> <img class="slide" src="/EyeMOM/resources/img/${game.g_photo }" />
							</a></li>
					</c:forEach>
				</ul>
			</div>

			<div class="banner_wrap videobanner">
				<ul class="slide_banner" id="videobanner">
					<c:forEach var='video' items='${videobanner}'>
						<li><c:choose>
								<c:when test="${empty sessionScope.user}">
									<a class="alink bestrice open-popup-link" href="#test-popup">
								</c:when>
								<c:otherwise>
									<a
										onclick="window.open('videoBoardView.go?d_no=${video.d_no}', '${video.d_title}',
                   				'width=1050,height=770');return false;">
								</c:otherwise>
							</c:choose> <img class="slide" src="/EyeMOM/resources/img/${video.d_photo }" />
							</a></li>
					</c:forEach>
				</ul>
			</div>

			<div class="banner_wrap studybanner">
				<ul class="slide_banner" id="studybanner">
					<c:forEach var='study' items='${studybanner}'>
						<li><c:choose>
								<c:when test="${empty sessionScope.user}">
									<a class="alink bestrice open-popup-link" href="#test-popup">
								</c:when>
								<c:otherwise>
									<a 
										onclick="window.open('studyBoardView.go?v_no=${study.v_no}', '${study.v_title}',
                   				'width=1050,height=770');return false;">
								</c:otherwise>
							</c:choose> <img class="slide" src="/EyeMOM/resources/img/${study.v_photo }" />
							</a></li>
					</c:forEach>
				</ul>
			</div>


			<table  cellspacing="0" id="slideMenu">
				<tr>
					<td id="gamebannerbtn" style="height: 33%;">
					<div class='opop opa'><img src="resources/img/home/gamebtn.png" class='gamebtn'></div></td>
				</tr>
				<tr>	
					<td id="videobannerbtn" style="height: 33%;">
					<div class='opop'><img src="resources/img/home/dancebtn.png" class='dancebtn' ></div></td>
				</tr>
				<tr>
					<td id="studybannerbtn" style="height: 33%;">
					<div class='opop'><img src="resources/img/home/studyingbtn.png" class='playbtn'></div></td>
				</tr>
			</table>
		</div>
		<div style="  width: 100%; height: 30px;"></div>
		<div style=" border-top: 1px solid #e3e3e3; width: 100%; height: 30px;"></div>
		<div id="mainMiddle">
			<table id="tabmenutable" cellspacing="0">
				<tr id="tabmenuTr">
					<td class="selectnow menubtn" rel="menu1" lin="link1">공지사항</td>
					<td class="noselect menubtn" rel="menu2" lin="link2">소아 질병</td>
				</tr>
				<tr id="tabcontenttr">
					<td colspan="2">
						<ul id="menu1" class="menucontent">
						<c:forEach var='notice' items='${notice}'>
							<li>[${notice.b_date }] <a href="noticeview.do?b_no=${notice.b_no}">${notice.b_title }</a></li>
						</c:forEach>
						</ul>

						<ul id="menu2" class="menucontent">
							<li><a href="sick.do">아토피피부염</a></li>
							<li><a href="gunsun.do">건선</a></li>
							<li><a href="cold.do">잦은 감기</a></li>
							<li><a href="bi.do">비염.축농증</a></li>
							<li><a href="chun.do">천식</a></li>
							<li><a href="jung.do">중이염</a></li>
							<li><a href="josuk.do">성조숙증</a></li>
							<li><a href="biman.do">소아비만</a></li>
							<li><a href="dang.do">소아당뇨</a></li>
						</ul>
					</td>
				</tr>
				<tr id="tablink">
					<td colspan="2">
					<a href="notice.do" class="alink">
						<div class="tablinks" id="link1">
							<br />공지사항 바로가기
						</div>
						</a>
					<a href="sick.do" class="alink">
						<div class="tablinks" id="link2">
							<br />소아 질병 바로가기
						</div>
					</a>
					</td>
				</tr>
			</table>
 
			<table id="groupBuyTable" cellspacing="0">
				<caption>
					<label>공동구매 최신 글 <span><a href="shopping.do" class="alink">더보기</a></span></label>
				</caption>
				<tr>
					<c:forEach var='purchaseVO' items='${purchaseList}'>
						<td>
						<c:choose>
												<c:when test="${empty sessionScope.user}">
													<a href="#test-popup" class="open-popup-link">
												</c:when>
												<c:otherwise>
													<!-- 세선정보가 있을경우 사용자 정보 show -->
													<a href="shoppingView.do?b_no=${purchaseVO.b_no}">
												</c:otherwise>
											</c:choose>
						
						<img
							src="/EyeMOM/resources/img/${purchaseVO.we_photo1name }"
							class="groupImg" /> <a class="goGroupBuy"><b>[${purchaseVO.we_title }]</b></a>
							<br /> <fmt:formatNumber value="${purchaseVO.we_price}"
								pattern="#,###.##" />원 <br />
							<hr color="#ffa07a" /> <c:set var="human"
								value="${purchaseVO.we_max - purchaseVO.we_sold }" />
								 <c:choose>
								<c:when test="${human gt 0}">
								인원: ${human }명<br />
								</c:when>
								<c:otherwise>
									<b style="color: red;">마감</b>
									<br />
								</c:otherwise>
							</c:choose> <b>구매기간</b><br /> ${purchaseVO.we_start } ~<br />
							${purchaseVO.we_end }</a></td>
					</c:forEach>
				</tr>
			</table>

		</div>

		
	
	</section>
	<footer>
	<div style="  width: 100%; height: 30px;"></div>
<div style="  width: 100%; height: 30px;"></div>
<div style="  width: 100%; height: 30px;"></div>
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
			<form method="post" onclick='return false'>
				<p>
					<span class="fontawesome-user"></span><input type="text" id="u_id"
						name="u_id" value="aaa" style="color: white;"
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
				회원이 아니십니까? <a href="gojoin.do" class="blue">회원가입하기</a><span
					class="fontawesome-arrow-right"></span>
			</p>
		</div>
		<!-- end login -->
	</div>
</div>
<!-- end popup -->
