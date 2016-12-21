$(function() {

	$("#topMenu").hide();
	$("#topCate-Cate1").hide();
	$("#topCate-Cate2").hide();
	$("#topCate-Cate3").hide();
	$("#topCate-Cate4").hide();
	$("#topSearch").hide();

	$("#top-CateItem1").click(function() {
		for (var i = 1; i <= 5; i++) {
			$("#topCate-Cate" + i).hide();
			$("#top-CateItem" + i).css("font-weight", "");
		}
		$("#top-CateItem1").css("font-weight", "bold");
		$("#topCate-Cate1").show();
	}).css('cursor', 'pointer');
	$("#top-CateItem2").click(function() {
		for (var i = 1; i <= 5; i++) {
			$("#topCate-Cate" + i).hide();
			$("#top-CateItem" + i).css("font-weight", "");
		}
		$("#top-CateItem2").css("font-weight", "bold");
		$("#topCate-Cate2").show();
	}).css('cursor', 'pointer');
	$("#top-CateItem3").click(function() {
		for (var i = 1; i <= 5; i++) {
			$("#topCate-Cate" + i).hide();
			$("#top-CateItem" + i).css("font-weight", "");
		}
		$("#top-CateItem3").css("font-weight", "bold");
		$("#topCate-Cate3").show();
	}).css('cursor', 'pointer');
	$("#top-CateItem4").click(function() {
		for (var i = 1; i <= 5; i++) {
			$("#topCate-Cate" + i).hide();
			$("#top-CateItem" + i).css("font-weight", "");
		}
		$("#top-CateItem4").css("font-weight", "bold");
		$("#topCate-Cate4").show();
	}).css('cursor', 'pointer');
	$("#top-CateItem5").click(function() {
		for (var i = 1; i <= 5; i++) {
			$("#topCate-Cate" + i).hide();
			$("#top-CateItem" + i).css("font-weight", "");
		}
		$("#top-CateItem5").css("font-weight", "bold");
		$("#topCate-Cate5").show();
	}).css('cursor', 'pointer');

	$("#menu").click(function() {
		// $("#topMenu").css('display','block');
		$("#topMenu").slideDown(500);
		$("#menu").hide();
	});

	$("#xbutton").click(function() {
		if ($("#topSearch").attr('style') == 'display: block;') {
			$("#topSearch").slideUp(500);
			setTimeout(function() {
				$("#topMenu").slideUp(500);
				$("#searchBtn").text("search");
			}, 500);
			$("#menu").show();

		} else {
			$("#topMenu").slideUp(500);
			$("#menu").show();
		}
	}).css('cursor', 'pointer');

	$(".man").click(function() {
		$(".woman").css("font-weight", "");
		$(this).css("font-weight", "bold");
	}).css('cursor', 'pointer');

	$(".woman").click(function() {
		$(".man").css("font-weight", "");
		$(this).css("font-weight", "bold");
	}).css('cursor', 'pointer');

});
