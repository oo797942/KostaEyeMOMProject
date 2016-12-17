<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inline popup</title>
<link rel="stylesheet" href="resources/css/faqboard.css">
<link rel='stylesheet prefetch'
	href='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.css'>
<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
<script type="text/javascript">
	$(function() {

		//      팝업 띄우기 위한 쿼리
		$('#popupLink').magnificPopup({
			type : 'inline',
			midClick : true
		// allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source.
		});
		
		
		//버튼 클릭시
		$('#btnfqa').click(function(){
			var title=$('#q_title').val()
			var content=$('#q_content').val()
			if(content==null||title==null){
				alert("제목과 내용을 입력하세요");
			}else{
				
				$.ajax({
			        url: "passfaq.do",
			        type: 'POST',
			        data : { "q_title" : $("#q_title").val(),
			        	"q_content" : $("#q_content").val()	},
			       	success: function(result){
			       	  
			       		if(result=="1"){
			       			location.reload();
			       			
			        	 }else{ alert("1:1문의글 등록에 실패 하였습니다");} 
			        		
			           },
				       error:function(err){
				    	   alert(err);
				       }
			     });
			
			}
			
		});
	})
</script>
<style type="text/css">
</style>
</head>

<body>
	<div class='body'>
		<!-- 팝업으로 쓰일 div의 아이디를 링크&& 아이디 지정 -->
<!-- 		<a href="#qnapopup" id="popupLink">A링크 팝업 띄우기</a> -->
			<!-- 1:1 문의하기 버튼 영역 -->
		<div class='faqbtn'>
			<table>
				<tr>
					<td style="padding: 16px 800PX 0 50PX;"><a href='#'><img
							alt="" src="resources/img/faq/KakaoTalk_20161216_123929836.png"></a></td>
					<td style="padding-top: 19px;"><a href='#qnapopup' id="popupLink"><img alt=""
							src="resources/img/faq/KakaoTalk_20161216_123602637.png"></a></td>
				</tr>
			</table>
		</div>

		<!-- 자주묻는 질문 페이지 배경화면 -->
		<div id="accordion">
			<h1 class='faqh1'>자주 묻는 질문 BEST5</h1>
			<ul class='acoul faqul'>
				<li><a href="#one" class='acoa'> <span class='faqspan'><img
							alt="BEST" src="resources/img/faq/BEST51.png"></span> <span class='faqspan1'></span>
				</a>
					<div id="one" class="accordion">
						<table>
							<tr style="	border-bottom: 3px solid #000;">
								<td class='faqtd'>A</td>
								<td class='faqtd1'>
									<p>
										교환은 배송완료 후 7일 이내 가능하며, 마이쿠팡과 고객센터를 통하여 가능하십니다.<br /> 마이쿠팡을 통해
										교환을 신청하는 경우, 구매해주신 상품과 동일 상품에 대해서만 가능한 점 양해바랍니다.
									</p>
									<p>
										동일상품에 대해서는 마이쿠팡 > 주문문록 > 교환신청을 통하여 직접 신청 가능하시며<br /> 다른 상품으로
										교환이 필요한 경우 고객센터(☎ 1577-7011) 또는 [고객센터 > 1:1 문의]로<br /> 교환 사유를
										접수해 주시면 상품회수에서 교환 상품 배송까지 신속하게 처리하여 드립니다.
									</p>
									<p>
										■ 교환가능 기간<br /> ① 구매자 단순변심 : 물품 수령 후 7일 이내<br /> ② 표시, 광고 상이,
										물품하자(초기불량)<br /> : 물품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던
										날부터 30일 이내<br /> ※ 교환접수 시, 택배 기사에게 해당 내용이 자동 전달되어 1~2일 내 상품이
										회수되며, 교환접수에서 교환상품의 배송까지 최대 7일이 소요됩니다.<br /> ※ 상품문제로 인한 교환이 아닌
										경우 교환비용이 부과되며, 이는 고객님께서 부담하셔야 합니다.<br /> ※ 교환상품 포장 시, 교환사유와 교환
										희망 상품(색상, 사이즈 등)을 기재한 메모를 함께 동봉하여 주시기 바랍니다.
									</p>
								</td>
							</tr>
						</table>
					</div></li>
				<li><a href="#two" class='acoa'><span class='faqspan'><img
							alt="BEST" src="resources/img/faq/BEST51.png"></span> <span class='faqspan1'>주문한 내역은 어디서 확인하나요?</span></a>
					<div id="two" class="accordion">
						<table>
							<tr>
								<td style="padding: 0 0 0 20px;">A</td>
								<td style="padding: 20px 20px;">
									<p>
										주문 내역은 [마이페이지 > 주문목록/배송조회]에서 확인하실 수 있습니다.
									</p>
								</td>
							</tr>
						</table>
					</div></li>
				<li><a href="#three" class='acoa'><span class='faqspan'><img
							alt="BEST" src="resources/img/faq/BEST51.png"></span> <span class='faqspan1'>자주묻는
							질문3</span></a>
					<div id="three" class="accordion">
						<table>
							<tr>
								<td  class='faqtd'>A</td>
								<td  class='faqtd1'>
									<p>
										교환은 배송완료 후 7일 이내 가능하며, 마이쿠팡과 고객센터를 통하여 가능하십니다.<br /> 마이쿠팡을 통해
										교환을 신청하는 경우, 구매해주신 상품과 동일 상품에 대해서만 가능한 점 양해바랍니다.
									</p>
									<p>
										동일상품에 대해서는 마이쿠팡 > 주문문록 > 교환신청을 통하여 직접 신청 가능하시며<br /> 다른 상품으로
										교환이 필요한 경우 고객센터(☎ 1577-7011) 또는 [고객센터 > 1:1 문의]로<br /> 교환 사유를
										접수해 주시면 상품회수에서 교환 상품 배송까지 신속하게 처리하여 드립니다.
									</p>
									<p>
										■ 교환가능 기간<br /> ① 구매자 단순변심 : 물품 수령 후 7일 이내<br /> ② 표시, 광고 상이,
										물품하자(초기불량)<br /> : 물품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던
										날부터 30일 이내<br /> ※ 교환접수 시, 택배 기사에게 해당 내용이 자동 전달되어 1~2일 내 상품이
										회수되며, 교환접수에서 교환상품의 배송까지 최대 7일이 소요됩니다.<br /> ※ 상품문제로 인한 교환이 아닌
										경우 교환비용이 부과되며, 이는 고객님께서 부담하셔야 합니다.<br /> ※ 교환상품 포장 시, 교환사유와 교환
										희망 상품(색상, 사이즈 등)을 기재한 메모를 함께 동봉하여 주시기 바랍니다.
									</p>
								</td>
							</tr>
						</table>
					</div></li>
				<li><a href="#four" class='acoa'><span class='faqspan'><img
							alt="BEST" src="resources/img/faq/BEST51.png"></span> <span class='faqspan1'>자주묻는
							질문4</span></a>
					<div id="four" class="accordion">
						<table>
							<tr>
								<td class='faqtd'>A</td>
								<td class='faqtd1'>
									<p>
										교환은 배송완료 후 7일 이내 가능하며, 마이쿠팡과 고객센터를 통하여 가능하십니다.<br /> 마이쿠팡을 통해
										교환을 신청하는 경우, 구매해주신 상품과 동일 상품에 대해서만 가능한 점 양해바랍니다.
									</p>
									<p>
										동일상품에 대해서는 마이쿠팡 > 주문문록 > 교환신청을 통하여 직접 신청 가능하시며<br /> 다른 상품으로
										교환이 필요한 경우 고객센터(☎ 1577-7011) 또는 [고객센터 > 1:1 문의]로<br /> 교환 사유를
										접수해 주시면 상품회수에서 교환 상품 배송까지 신속하게 처리하여 드립니다.
									</p>
									<p>
										■ 교환가능 기간<br /> ① 구매자 단순변심 : 물품 수령 후 7일 이내<br /> ② 표시, 광고 상이,
										물품하자(초기불량)<br /> : 물품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던
										날부터 30일 이내<br /> ※ 교환접수 시, 택배 기사에게 해당 내용이 자동 전달되어 1~2일 내 상품이
										회수되며, 교환접수에서 교환상품의 배송까지 최대 7일이 소요됩니다.<br /> ※ 상품문제로 인한 교환이 아닌
										경우 교환비용이 부과되며, 이는 고객님께서 부담하셔야 합니다.<br /> ※ 교환상품 포장 시, 교환사유와 교환
										희망 상품(색상, 사이즈 등)을 기재한 메모를 함께 동봉하여 주시기 바랍니다.
									</p>
								</td>
							</tr>
						</table>
					</div></li>
				<li><a href="#five" class='acoa'><span class='faqspan'><img
							alt="BEST" src="resources/img/faq/BEST51.png"></span> <span class='faqspan1'>자주묻는
							질문5</span></a>
					<div id="five" class="accordion">
						<table>
							<tr>
								<td class='faqtd'>A</td>
								<td class='faqtd1'>
									<p>
										교환은 배송완료 후 7일 이내 가능하며, 마이쿠팡과 고객센터를 통하여 가능하십니다.<br /> 마이쿠팡을 통해
										교환을 신청하는 경우, 구매해주신 상품과 동일 상품에 대해서만 가능한 점 양해바랍니다.
									</p>
									<p>
										동일상품에 대해서는 마이쿠팡 > 주문문록 > 교환신청을 통하여 직접 신청 가능하시며<br /> 다른 상품으로
										교환이 필요한 경우 고객센터(☎ 1577-7011) 또는 [고객센터 > 1:1 문의]로<br /> 교환 사유를
										접수해 주시면 상품회수에서 교환 상품 배송까지 신속하게 처리하여 드립니다.
									</p>
									<p>
										■ 교환가능 기간<br /> ① 구매자 단순변심 : 물품 수령 후 7일 이내<br /> ② 표시, 광고 상이,
										물품하자(초기불량)<br /> : 물품을 수령한 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던
										날부터 30일 이내<br /> ※ 교환접수 시, 택배 기사에게 해당 내용이 자동 전달되어 1~2일 내 상품이
										회수되며, 교환접수에서 교환상품의 배송까지 최대 7일이 소요됩니다.<br /> ※ 상품문제로 인한 교환이 아닌
										경우 교환비용이 부과되며, 이는 고객님께서 부담하셔야 합니다.<br /> ※ 교환상품 포장 시, 교환사유와 교환
										희망 상품(색상, 사이즈 등)을 기재한 메모를 함께 동봉하여 주시기 바랍니다.
									</p>
								</td>
							</tr>
						</table>
					</div></li>
			</ul>
		</div>
		<!-- 내가한 질문 목록 -->
		<div class='faqtablediv'>
			<h1 class='faqh1'>내가 한 질문</h1>
			<table id='faqtable'>
				<colgroup>
					<col style="width: 100px">
					<col style="width: 100px">
					<col>
					<col style="width: 100px">
					<col style="width: 130px">
				</colgroup>
				<thead class='faqthead'>
					<tr class='faqtr'>
						<td class='faqtd2'>글번호</td>
				 		<td class='faqtd2'>구분</td>
						<td class='faqtd2'>제목</td>
						<td class='faqtd2'>작성일</td>
						<td class='faqtd2'>답변상태</td>
					</tr>
				</thead> 
				<tbody> 
					<tr class='faqtr'>
						<td class='faqtd2'>4</td>
						<td class='faqtd2'>구분</td>
						<td class='faqtd2'><a href='#' class='faqA'>집 언제 갈까요?</a></td>
						<td class='faqtd2'>2016-12-16</td>
						<td class='faqtd2'>답변예정</td>
					</tr>
					<tr class='faqtr'>
						<td class='faqtd2'>4</td>
						<td class='faqtd2'>구분</td>
						<td class='faqtd2'><a href='#' class='faqA'>집 언제 갈까요?</a></td>
						<td class='faqtd2'>2016-12-16</td>
						<td class='faqtd2'>답변예정</td>
					</tr>
					<tr class='faqtr'>
						<td class='faqtd2'>4</td>
						<td class='faqtd2'>구분</td>
						<td class='faqtd2'><a href='#' class='faqA'>집 언제 갈까요?</a></td>
						<td class='faqtd2'>2016-12-16</td>
						<td class='faqtd2'>답변예정</td>
					</tr>
					<tr class='faqtr'>
						<td class='faqtd2'>4</td>
						<td class='faqtd2'>구분</td>
						<td class='faqtd2'><a href='#' class='faqA'>집 언제 갈까요?</a></td>
						<td class='faqtd2'>2016-12-16</td>
						<td class='faqtd2'>답변예정</td>
					</tr>
					<tr class='faqtr'>
						<td class='faqtd2'>4</td>
						<td class='faqtd2'>구분</td>
						<td class='faqtd2'><a href='#' class='faqA'>집 언제 갈까요?</a></td>
						<td class='faqtd2'>2016-12-16</td>
						<td class='faqtd2'>답변예정</td>
					</tr>
				</tbody>
			</table>
		</div>



		<!-- 팝업으로 쓰일 div -->
			<div id="qnapopup" class="white-popup1 mfp-hide">
				<!-- 1:1 상담문의 제목 --> 
				<div class='answerdiv'>
					<h1 class='answerh1'>1:1 상담문의</h1>
					<hr class='answerhr' />
				<!-- 입력창 div -->
					<div class='answerinputdiv'>
						<table class='infotable1'>
							<tr height="70px;">
								<td class='myfont1' class='answertr'>제목</td>
								<td class='answertd'><input type='text' class='form-control2 pagealign1 answerinput'  value='' name='q_title' id='q_title' placeholder="제목"/></td>
							</tr>
							<tr>
								<td class='myfont1' style="width: 10%;">내용</td>
								<td><textarea class='form-control3 answertxt' name='q_content' id='q_content'></textarea></td>
							</tr>
						</table>
					</div>
					<!-- 전송버튼 / 취소 버튼 -->
					<div class="answeralign">
						<input type="button" value='전송하기' id='btnfqa' class='sbmbtn sbmbtn-primary'>
						<input type="button" value='다시쓰기' class='rebtn '>
					</div>
				</div>
			</div>
	</div>
</html>