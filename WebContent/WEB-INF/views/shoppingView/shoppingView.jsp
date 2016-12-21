<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뷰</title>
<link href="css/jquery.bxslider.css"
	rel="stylesheet" />
<link href="resources/css/shoppingView.css" rel="stylesheet" />
<link href="resources/css/faqboard.css" rel="stylesheet"/>
<script src="resources/js/jquery-1.10.2.min.js"></script> 
<script src="resources/js/main.js"></script>

<script type="text/javascript">
// $(function(){
	
// 	$("#hideprice").hide();
<%-- 	if("<%=sessionValue%>"=="null"){ --%>
// 		$("#shoplogin").show();
// 		$("#shoplogout").hide();
// 	}else{
// 		$("#shoplogin").hide();
// 		$("#shoplogout").show();
// 	}
	
// 	$("#shoplogin").click(function(){
<%-- 		window.open("<%=projectName%>/shoplogin.ho?cmd=shoplogin-page", '_blank', 'width=290, height=380, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );	 --%>
		
// 	}).css('cursor','pointer');
	
	
// 	$("#shoplogout").click(function() {
<%-- 		alert("로그아웃클릭하고 세션값 :<%=session.getAttribute("yourid")%>"); --%>

<%-- 		window.location = "<%=projectName%>/logout.ho?cmd=logout-page"; --%>

// 		$("#shoplogout").hide();
// 		$("#shoplogin").show();
	
// 	}).css('cursor','pointer');
	
// 	$("#NoLoginMyPage").click(function(){
<%-- 		window.open("<%=projectName%>/shoplogin.ho?cmd=shoplogin-page", '_blank', 'width=290, height=380, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );			 --%>
// 	});
	
	
// 	$("#searchInput").keypress(function(event){
// 		if(event.which == 13){
// 			var option = $("#searchCategory").val();
// 			var radio = $("input:radio[name=searchRadio]:checked").val();
// 			var inputvalue = $("#searchInput").val();
<%-- 			window.location.href="<%=projectName%>/list.ho?cmd=search-input&option=" --%>
// 										+ option
// 										+ "&check="
// 										+ radio
// 										+ "&val="
// 										+ inputvalue;
// 							}
// 						});

<%-- 		var totalPriceTemp =<%=hg.getGoodsPrice()%>+<%=hg.getGoodsRentPrice()%>; --%>

// 		$("#totalPrice").text(totalPriceTemp);
		
// 		for(var i=1; i<=$("#LSize").val();i++){
// 			$("#countSelect").append("<option value="+i+">"+i+"벌</option>");
// 		}
		
// 		$("#sizeSelect").change(function(){
// 			if($("#sizeSelect").val()=="L"){
// 				$('#countSelect').children().remove();
// 				for(var i=1; i<=$("#LSize").val();i++){
// 					$("#countSelect").append("<option value="+i+">"+i+"벌</option>");
// 				}

// 			}else if($("#sizeSelect").val()=="M"){
// 				$('#countSelect').children().remove();
// 				for(var i=1; i<=$("#MSize").val();i++){
// 					$("#countSelect").append("<option value="+i+">"+i+"벌</option>");
// 				}

				
// 			}else if($("#sizeSelect").val()=="S"){
// 				$('#countSelect').children().remove();
// 				for(var i=1; i<=$("#SSize").val();i++){
// 					$("#countSelect").append("<option value="+i+">"+i+"벌</option>");
// 				}

// 			}
// 		});
<%-- 		$("#hideprice").val(<%=hg.getGoodsPrice()%>); --%>
// 		$("#countSelect").change(function() {
<%-- 					var totalPriceReal = (<%=hg.getGoodsPrice()%>* $("#countSelect").val())+<%=hg.getGoodsRentPrice()%>; --%>
// 					$("#totalPrice").text(totalPriceReal);
// 					$("#hideprice").val(totalPriceReal);
// 		});
		
		
// 		$("#bagoo").click(function(){
<%-- 			<% System.out.println("#bagoo 안에 : " +hg.getGoodsId()); %> --%>
// 					$("#frm").submit();
// 		});
		
// 		$("#bagooNoLogin").click(function(){
<%-- 			window.open("<%=projectName%>/shoplogin.ho?cmd=shoplogin-page", '_blank', 'width=290, height=380, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );			 --%>
// 		});
		
// 		$("#jjimNoLogin").click(function(){
<%-- 			window.open("<%=projectName%>/shoplogin.ho?cmd=shoplogin-page", '_blank', 'width=290, height=380, toolbar=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no' );			 --%>
// 		});
		
// 		$("#insertReply").click(function(){
// 			$.ajax({         
<%-- 		        url : '<%=projectName%>/checkid.ho?cmd=Reply-check&id=<%=sess%>&no=<%=hg.getGoodsId()%>', --%>
// 		        type : 'post',
// 		        success : function(data){
// 		        	if(data==1){
// 		        		$("#frm2").submit();
// 					}else{
// 						alert("구매가 이루어진 후 후기를 쓰실수 있습니다.");
// 					}
// 		        },
// 		        error : function(){
// 		           alert('에러 발생');   
// 		        }
// 		     });
// 		});
// 		$("#jjim").click(function(){
			
<%-- 			window.location.href="<%=projectName%>/bag.ho?cmd=bag-insert&itemname=<%=hg.getGoodsName()%>&imgs=<%= hg.getGoodsImg()%>&itemno=<%= hg.getGoodsId()%>"; --%>
// 		});

// 	});
</script>
</head>
<body>
	<section class='ShopSection'>
	<div style="width: 100%; height: 50px; border: 2px solid #e3e3e3; margin: 30px auto;line-height: 3em ;border-radius: 2em;">
		<label style="font-family: Dotum; font-size: 20pt; font-weight: bold; margin: 50px auto; padding: 20px 0;">(직수입)이.제.희 </label>
	</div>
	<input id="LSize" type="hidden" value=""/>
	<input id="MSize" type="hidden" value=""/>
	<input id="SSize" type="hidden" value=""/>
	<form name="frm" id="frm" method="get" action="/xx.ho">
<!-- 		<input type="hidden" name="adid" value="">			 -->
<!-- 		<input type="hidden" name="cmd" value="page-view"> -->
<!-- 		<input type="hidden" name="name" value=""> -->
<!-- 		<input type="hidden" name="price" value=""> -->
<!-- 		<input type="hidden" name="img" value=""> -->
<!-- 		<input type="hidden" name="tackbae" value=""> -->
<!-- 		<input type="hidden" name="goodsid" value=""> -->
		
		<table id="viewTable">
			<tr>
				<td id="viewTableImg" rowspan="4" style="width: 450px;">
				<img id="itemView" src="resources/img/shopping/unnamed1RDB0UZ1.png" style="max-width: 100%; height: auto;"/></td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail1">판매가</td>
				<td class="viewInfo" >11,111,111원</td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail1">수량</td>
				<td class="viewInfo" ><input type="button" value='+' class='infoCountbtn'/><input type="text" class='infoCount' value='1'/><input type="button" value='-' class='infoCountbtn'/></td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail2">상품설명</td>
				<td class="viewInfo">수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희수입산제희</td>
			</tr>
			<tr height="30px;"></tr>
			<tr>
				<td id="btnTableTd" colspan="4">
					<table id="btnTable" width="100%" cellspacing="0">
						<tr>
							<td id="bagoo" class="tdBtn" width="50%" style="text-align: center; background-color: #ffa07a; color:#fff; font-weight: bold;">바로구매</td>
							<td id="jjim" class="tdBtn" style="text-align: center;">찜하기</td>
						</tr>
					</table>
				</td>
			</tr>
<!-- 			<tr> -->
<!-- 				<td id="btnTableTd" colspan="2"> -->
				
<!-- 					<table id="btnTable" style="width: 100%"> -->
<!-- 						<tr> -->
<!-- 							<td id="bagoo" class="tdBtn" width="50%" style="text-align: center;">바로구매</td> -->
<!-- 							<td id="jjim" class="tdBtn" style="text-align: center;">찜하기</td> -->
<!-- 						</tr> -->
<!-- 					</table> -->
<!-- 				</td> -->
<!-- 			</tr> -->
		</table>
		
		</form>
		
		<br />
		
		<table style="width: 1024px;">
			<tr>
				<td width="33%"><img class="infoImage"
					src="resources/img/shopping/unnamed1RDB0UZ1.png"></td>
				<td width="33%"><img class="infoImage"
					src="resources/img/shopping/이선빈.JPG"></td>
				<td><img class="infoImage"
					src="resources/img/shopping/unnamed1RDB0UZ1.png"></td>
			</tr>
		</table>
		<div class='sameinfoDiv'>
			<div class='sameinfo'><h2 class='sameinfoTXT'>공동구매 안내</h2></div>	
			<!-- 구매시작 / 구매종료 -->			
			<div class='sameinfo1'><h3 class='sameinfoTXT1'>모집기간</h3>
				<label class='sameStart'>2016-12-20</label>
				<label class='sameStart'>~</label>
				<label class='sameStart'>2016-12-20</label>
			</div>				
			<!-- 현재 인원/ 목표 인원 -->
			<div class='sameinfo1'><h3 class='sameinfoTXT1'>현재인원 / 목표인원</h3>
				<label class='sameSold'>56</label>
				<label class='sameStart'>/</label>
				<label class='sameMax'>1</label>
			</div>				
			<div class='sameinfo2'><h3 class='sameinfoTXT1'>입금예정일</h3>		
				<label class='sameStart'>2016-12-20</label>
			</div>
		</div>
		
		<img width="1024px" src="resources/img/shopping/refund_info.png" />
		<div class='Shoptablediv'>
			<h1 class='faqh1'>후기</h1>
			<table id='faqtable'>
				<colgroup>
					<col style="width: 100px">
					<col>
					<col style="width: 100px">
				</colgroup>
				<thead class='faqthead'>
					<tr class='faqtr'>
						<td class='faqtd2' scope="col">닉네임</td>
						<td class='faqtd2' scope="col">내용</td>
						<td class='faqtd2' scope="col">작성일</td>
					</tr>
				</thead>
				<tbody>
					<tr class='faqtr'>
						<td class='faqtd2' scope="row">wamsi98</td>
						<td class='faqtd2' scope="row">개쩌렁줘요</td>
						<td class='faqtd2' scope="row"><a class='faqA'
							style='text-decoration: none'></a>2016-12-20</td>
					</tr>
					<tr class='faqtr'>
						<td class='faqtd2' scope="row">wamsi98</td>
						<td class='faqtd2' scope="row">개쩌렁줘요</td>
						<td class='faqtd2' scope="row"><a class='faqA'
							style='text-decoration: none'></a>2016-12-20</td>
					</tr>
					<tr class='faqtr'>
						<td class='faqtd2' scope="row">wamsi98</td>
						<td class='faqtd2' scope="row">개쩌렁줘요</td>
						<td class='faqtd2' scope="row"><a class='faqA'
							style='text-decoration: none'></a>2016-12-20</td>
					</tr>
				</tbody>
			</table>
		</div>


		<form id="frm2" method="post" action= "">
		<input type="hidden" name="cmd" value="GoodsReply">
		<input type="hidden" name="name" value="">
		<input type="hidden" name="id" value="">			
		<input type="hidden" name="name1" value="">
		<br /> <input type="text" autocomplete="off"
		
			placeholder="후기를 입력해 주세요." id="replyInput" name="replyInput" />
			<input type="button" value="입력" id="insertReply" style="height: 40px; width: 80px; border-radius: 1em; background-color: #ffa07a; font-weight: bolder; color: #fff;"><br /> <br /> 
		</form>
	</section>
</body>
</html>