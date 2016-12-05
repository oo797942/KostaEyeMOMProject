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
	$("#mainTopMenuBarImg").click(function(){
		// 메뉴가 화면에 떠있으면 메뉴를 가리고 이미지를 띄워준다
		if ($("#menu").attr("style") == "display: block;") {
			$("#menu").hide();
			$("#mainMenuImg").show();
		// 아니면 이미지를 가리고 메뉴를 띄워준다
		}else{
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
});