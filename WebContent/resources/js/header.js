$(function() {

	// 메뉴바 슬라이드 토글
	$('#menubar').click(function() {
		$('#menu').stop().slideToggle(500);
	});

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
	
	// 네비게이션 메뉴의 검색 버튼
	$("#navSearchBtn").click(function(){
		$('#navSearchInput').stop().slideToggle(300);
		$('#navSearchInput').focus();
		$('#navSearchInput').select();
	});

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
	
});
