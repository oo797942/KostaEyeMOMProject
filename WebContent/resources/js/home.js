$(function() {

	// 검색 버튼 눌렀을 때 토글
	$("#searchBtnA").click(function() {
		// 화면에 보이는 상태면 숨겨줌
		if ($("#searchInput").attr("style") == "display: inline-block;") {
			$("#searchInput").fadeOut(500);
			// 보이지 않고 있으면 검색창 텍스트 초기화하고 보여줌
		} else {
			$("#searchInput").val("");
			$("#searchInput").fadeIn(500);
			$("#searchInput").focus();
		}
	});

	// 메뉴버튼을 클릭했을 때
	$("#mainTopMenuBarImg").click(function() {
		// 메뉴가 화면에 떠있으면 메뉴를 가리고 이미지를 띄워준다
		if ($("#menu").attr("style") == "display: block;") {
			$("#menu").hide();
			$("#mainMenuImg").show();
			// 아니면 이미지를 가리고 메뉴를 띄워준다
		} else {
			$("#mainMenuImg").hide();
			$("#menu").show();
		}
	});

	// 사진에 마우스가 올라가면 메뉴가 보인다.
	$("#mainMenuImg").mouseover(function() {
		$("#mainMenuImg").hide();
		$("#menu").show();
	});
	$("#menu").mouseover(function() {
		$("#mainMenuImg").hide();
		$("#menu").show();
	});

	// 마우스가 나가면 사진이 다시 보인다.
	$("#mainMenuImg").mouseout(function() {
		$("#menu").hide();
		$("#mainMenuImg").show();
	});

	$("#menu").mouseout(function() {
		$("#menu").hide();
		$("#mainMenuImg").show();
	});

	// bxSlider
	var mySlider = $('#slide_banner').bxSlider({
		mode : 'horizontal',// 가로 방향 수평 슬라이드
		speed : 400, // 이동 속도를 설정
		pager : false, // 현재 위치 페이징 표시 여부 설정
		moveSlides : 1, // 슬라이드 이동시 개수
		slideWidth : 1000, // 슬라이드 너비
		minSlides : 1, // 최소 노출 개수
		maxSlides : 1, // 최대 노출 개수
		auto : true, // 자동 실행 여부
		autoHover : false, // 마우스 호버시 정지 여부
		controls : false
	});

	$(".tab_content").hide();
	$(".tab_content:first").show();

	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active").css("color", "#333");
		// $(this).addClass("active").css({"color": "darkred","font-weight":
		// "bolder"});
		$(this).addClass("active").css("color", "darkred");
		$(".tab_content").hide()
		var activeTab = $(this).attr("rel");
		$("#" + activeTab).fadeIn()
	});

});