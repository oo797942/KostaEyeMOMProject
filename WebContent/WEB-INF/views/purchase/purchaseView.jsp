<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link href="resources/css/purchaseView.css" rel="stylesheet" />
<script src="resources/js/jquery-1.10.2.min.js"></script>
<script src="resources/js/main.js"></script>

<script type="text/javascript">
// $(function(){

<%-- 	if("<%=sessionValue%>"=="null"){ --%>
// 		$("#shoplogin").show();
// 		$("#shoplogout").hide();
// 	}else{
// 		$("#shoplogin").hide();
// 		$("#shoplogout").show();
// 	}
	
// 	$("#shoplogin").click(function(){
<%-- 		window.open("/shoplogin.ho?cmd=shoplogin-page", '_blank', 'width=290, height=380, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );	 --%>
		
// 	}).css('cursor','pointer');
	
	
// 	$("#shoplogout").click(function() {

<%-- 		window.location = "/logout.ho?cmd=logout-page"; --%>

// 		$("#shoplogout").hide();
// 		$("#shoplogin").show();
	
// 	}).css('cursor','pointer');
	
// 	$("#NoLoginMyPage").click(function(){
<%-- 		window.open("/shoplogin.ho?cmd=shoplogin-page", '_blank', 'width=290, height=380, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );			 --%>
// 	});
	
// 	$("#same").click(function(){
<%-- 		$("#OrderRName").val("<%=hm.getMemName()%>"); --%>
<%-- 		$("#OrderRTel").val("<%=hm.getMemTel()%>"); --%>
<%-- 		$("#OrderRAddr").val("<%=hm.getMemAddr()%>"); --%>
		
// 	});
	
	
// 	$(".btn_submit").click(function(){
// 		if(!$(".OrderSettleCase").is(":checked")){
// 			alert("결제방식을 선택해주세요.");	
// 		}else{
// 			$("#goSubmit").submit();
// 		}
// 	});
	
// });
</script>
</head>
<body>
`	<section class='purSection'>
	<form action="/final.ho" method="get" id="goSubmit">
<!-- 	<input type="hidden" name="cmd" value="pay-view"> -->
<!-- 	<input type="hidden" name="OrderId" value=""> -->
<!-- 	<input type="hidden" name="OrderSangpumNo" value=""> -->
<!-- 	<input type="hidden" name="OrderSangpumName" value=""> -->
<!-- 	<input type="hidden" name="OrderSize" value=""> -->
<!-- 	<input type="hidden" name="OrderSoo" value=""> -->
<!-- 	<input type="hidden" name="OrderPrice" value=""> -->
<!-- 	<input type="hidden" name="OrderRentPrice" value=""> -->
<!-- 	<input type="hidden" name="OrderImg" value=""> -->
<!-- 	<input type="hidden" name="OrderTotalPrice" value=""> -->
	<div class="alignleft">
		<div class="panel">
			<div>
				<div class="purHeader">
					<h2 class="pnum">01</h2>	
					<div class="purTitle" style="text-align: left;">
						주문리스트 확인 <span id="confirmProdStr"></span>
					</div>
				</div>
			</div>
			<div>
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td class="img ptd" rowspan="2"><img src="" width="58"
								height="58" alt=""></td>
							<td class="nme ptd" rowspan="2"></td>
							<td class="qty ptd" rowspan="2">개</td>
							<td class="price ptd" rowspan="2">원</td>
							<td class="td_pnumbig ptd" rowspan="2">배송비  1원</td>
							<td class="amt ptd" rowspan="2"><span class="total_price">
									총 가격:1원</span></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>


		<div class="panel">
			<div>
				<div class="purHeader">
					<h2 class="pnum">02</h2>
					<div class="purTitle" style="text-align: left;">주문고객정보</div>
				</div>
			</div>

			<table width="1000" height="350" class="table table-bordered">
				<tr>
					<td class='ptd'>
					<br/><br/>
						<!-- 주문자명 -->
						<div class="pur-group">
							<label for="name" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-user" aria-hidden="true"></span> 주문자명
							</label>
							<div class="col-md-3">
								<input type="text" name="OrderSName" id="OrderSName" class="purform-control"
									value="" readonly="readonly" required>
							</div>
						</div><br /><br />

						<!-- 이메일 -->
						<div class="pur-group">
							<label for="eamil" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
								Email
							</label>
							<div class="col-md-3">
								<input type="email" name="OrderSEmail" id="eamil" class="purform-control"
									value="" required="required">
							</div>
						</div><br/><br/> 

						<!-- 전화번호 -->
						<div class="pur-group">
							<label for="tel" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-phone" aria-hidden="true"></span> 전화
							</label>
							<div class="col-md-3">
								<input type="text" name="OrderSTel" id="tel" class="purform-control"
									value="" required="required">
							</div>
						</div><br /><br />

						<!-- 주소 & 상세주소 -->
						<div class="pur-group">
							<label for="addr" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-home" aria-hidden="true"></span> 주소
							</label>
							<div class="col-md-5">
								<input type="text" name="OrderSAddr" id="addr" class="purform-control" placeholder="주소를 입력하세요"
									value="" required="required"><br/>
<!-- 								<input type="text" name="addrdetail" id="addr" class="purform-control" placeholder="상세주소를 입력하세요" -->
<!-- 									value="" >  -->
							</div>
						</div>
					</td>
				</tr>
			</table>
		</div>
		
		
		<div class="panel">
			<div>
				<div class="purHeader">
					<h2 class="pnum">03</h2>
					<div class="purTitle" style="text-align: left;">배송지정보</div>
				</div>
			</div>

			<table width="1000" height="350" class="table table-bordered">
				<tr>
					<td>
					<input type="button" value="위와 동일" id="same" class='purBtn'/>
					<br/><br/>
						<!-- 수령자명 -->
						<div class="pur-group">
							<label for="receiver" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-envelope" aria-hidden="true"></span>수령자명
							</label>
							<div class="col-md-3">
								<input type="text" name="OrderRName" id="OrderRName" class="purform-control"
									value="" required="required">
							</div>
						</div><br/><br/> 

						<!-- 전화번호 -->
						<div class="pur-group">
							<label for="tel" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-phone" aria-hidden="true"></span> 전화
							</label>
							<div class="col-md-3">
								<input type="text" name="OrderRTel" id="OrderRTel" class="purform-control"
									value="">
							</div>
						</div><br /><br />

						<!-- 주소 & 상세주소 -->
						<div class="pur-group">
							<label for="detail" class="col-md-2 control-label purLabel"> <span
								class="glyphicon glyphicon-home" aria-hidden="true"></span> 주소
							</label>
							<div class="col-md-5">
								<input type="text" name="OrderRAddr" id="OrderRAddr" class="purform-control" placeholder="주소를 입력하세요"
									value=""><br/>
							</div>
						</div><br /><br />
						
						<!-- 배달시요구사항 -->
						<div class="pur-group">
							<label for="demand" class="col-md-2 control-label purLabel "> <span
								class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>  배달시 요구사항
							</label>
							<div class="col-md-5">
								<input type="text" name="OrderRDemand" id="OrderRDemand" class="purform-control" placeholder="입력하지마 ㅆ.."
									value="">
							</div>
						</div><br/><br/>
					</td>
				</tr>
			</table>
		</div>
	</div>
		

	
	<div class="alignright">
		<div class="panel">
			<div>
				<div class="purHeader">
					<h2 class="pnum">04</h2>
					<div class="purTitle" style="text-align: left;">결제 수단</div>
					</div>
				<div class="body">
					<div class="tabl minimal single-row" >
						<div class="radio"><input type="radio" id="od_settle_card" class='purRadio' name="OrderSettleCase" class ="OrderSettleCase" value="신용카드"> <label for="od_settle_card">신용카드</label></div>
						<div class="radio"><input type="radio" id="od_settle_bank" class='purRadio' name="OrderSettleCase"  class ="OrderSettleCase"  value="무통장"> <label for="od_settle_bank">무통장입금</label></div>
						<div class="radio"><input type="radio" id="od_settle_iche" class='purRadio' name="OrderSettleCase"   class ="OrderSettleCase"  value="계좌이체"> <label for="od_settle_iche">에스크로 실시간 계좌이체</label></div>
						<div class="radio"><input type="radio" id="od_settle_coin" name="OrderSettleCase"   class ="OrderSettleCase purRadio"  value="계좌이체"> <label for="od_settle_coin">코인 결제</label></div>
					</div>		
         	   	</div>
         	 <div class="body bottom">
         	<p class='purP'>무통장입금 주문건 3일이내 미입금 시, 자동 취소처리가 진행됩니다.</p>
         	<p class='purP'>신용카드 결제시 화면 아래 '결제하기'버튼을 클릭하시면 신용카드 결제 창이 나타납니다. 
            <br>신용카드 결제 창을 통해 입력되는 고객님의 카드 정보는 128bit로 안전하게 암호화되어 전송되며 승인 처리 후 카드 정보는 승인 성공/ 실패 여부에 상관없이 자동 으로 폐기되므로, 안전합니다.</p>
            <p class='purP'>신용카드 결제 신청시 승인 진행에 다소 시간이 소요될 수 있으므로 '중지', '새로고침'을 누르지 마시고 결과 화면이 나타 날때까지 기다려 주십시오. 
            <br>(결제하기 버튼 클릭시 결제창이 나타나지 않을 경우나 안전결제 모듈이 설치 되지 않을경우 <a class='purA' href="http://admin.allthegate.com/admin_board/download_pds.jsp?filename=AGSPay_Setup.zip" style="font-weight: bold;">[여기]</a> 를 눌러 수동으로 플러그인을 설치하십시요.)</p>
			<p class='purP'>신용카드/ 실시간 이체는 결제 후, 무통장입금은 입금확인 후 배송이 이루어집니다.</p>
			<p class='purP'>국내 모든 카드 사용이 가능하며 해외에서 발행된 카드는 이용하실수 없습니다.</p>
			<p class='purP'>I MOM은 구매안전서비스로 전자보증 서비스에 가입되어있습니다.</p>
			            
         	   	</div>
			</div>
		</div>
	</div>
	
	<div>	
		<div>
			<div id="display_pay_button" class="btn-group">
		   		<input type="button" value="결제하기" class="btn_submit purBtn" onclick=""/>
			</div>
			
			<div id="display_cancle_button" class="btn-group">
		   		<input type="button" value="취소하기" class="btn_cancle purBtn" onclick="">
			</div>
		</div>
	</div>	
	</form>
	</section>
</body>
</html>