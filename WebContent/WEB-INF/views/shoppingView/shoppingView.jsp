<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>뷰</title>
<link href="resources/css/shoppingView.css" rel="stylesheet" />
<link href="resources/css/faqboard.css" rel="stylesheet"/>
<script src="resources/js/jquery-1.10.2.min.js"></script> 
<script src="resources/js/main.js"></script>

<script type="text/javascript">
$(function(){
	

		$("#plus").click(function(){
			var count= $("#we_count").val();
			count=Number(count);
			$("#we_count").val(count+1);		
		});
		
		$("#minus").click(function(){
			var count= $("#we_count").val();
			count=Number(count);
			if(count==0){
				
			}else{
			$("#we_count").val(count-1);
			}
		});
		

		
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

});
</script>
</head>
<body>
	<section class='ShopSection'>
	<div style="width: 100%; height: 50px; border: 2px solid #e3e3e3; margin: 30px auto;line-height: 3em ;border-radius: 2em;">
		<label style="font-family: Dotum; font-size: 20pt; font-weight: bold; margin: 50px auto; padding: 20px 0;">${vo.we_title} </label>
	</div>
	<input id="LSize" type="hidden" value=""/>
	<input id="MSize" type="hidden" value=""/>
	<input id="SSize" type="hidden" value=""/>
	<form name="frm" id="frm" method="get" action="shoppingpay.do">
<!-- 		<input type="hidden" name="adid" value="">			 -->
<!-- 		<input type="hidden" name="cmd" value="page-view"> -->
<!-- 		<input type="hidden" name="name" value=""> -->
<!-- 		<input type="hidden" name="price" value=""> -->
<!-- 		<input type="hidden" name="img" value=""> -->
<!-- 		<input type="hidden" name="tackbae" value=""> -->
<!-- 		<input type="hidden" name="goodsid" value=""> -->
		
		<table id="viewTable">
			<tr>
				<td id="viewTableImg" rowspan="6" style="width: 450px;">
				<input type="hidden" value="${vo.b_no }" id="b_no" name="b_no">
				<img id="itemView" src="resources/img/${vo.we_photo1name}" style="max-width: 100%; height: auto;"/>
				</td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail1">판매가</td>
				<td class="viewInfo" style="font-size: x-large; color: #ffa07a;">
				<fmt:formatNumber value="${vo.we_price}" pattern="#,###.##"/>원
				</td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail1">수량</td>
				<td class="viewInfo" ><input type="button" id='minus' value='-' class='infoCountbtn'/>
				<input type="text" class='infoCount' name='we_count' id='we_count' value='1'/>
				<input type="button" id='plus' value='+' class='infoCountbtn'/>
				</td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail1">배송방법</td>
				<td class="viewInfo" >택배</td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail1">배송비</td>
				<td class="viewInfo" >무료배송</td>
			</tr>
			<tr>
				<td class="viewInfo infoDetail2">상품설명</td>
				<td class="viewInfo">${vo.we_content}</td>
			</tr>
			<tr height="30px;"></tr>
			<tr>
				<td id="btnTableTd" colspan="4">
					<table id="btnTable" width="100%" cellspacing="0">
						<tr>
							<td></td>
							<td id="bagoo" class="tdBtn" width="50%" style="text-align: center; background-color: #ffa07a; color:#fff; font-weight: bold;">
							<input type="submit" style="width: 100%; height: 100%" value="바로구매"/></td>
						</tr>
					</table>
				</td>
		</table>
		</form>
		<br />
		<div class='sameinfoDiv'>
			<div class='sameinfo'><h2 class='sameinfoTXT'>공동구매 안내</h2></div>	
			<!-- 구매시작 / 구매종료 -->			
			<div class='sameinfo1'><h3 class='sameinfoTXT1'>모집기간</h3>
				<label class='sameStart'>${vo.we_start}</label><br/>
				<label class='sameStart'>~</label><br/>
				<label class='sameStart'>${vo.we_end}</label>
			</div>				
			<!-- 현재 인원/ 목표 인원 -->
			<div class='sameinfo1'><h3 class='sameinfoTXT1'>현재인원 / 목표인원</h3>
				<label class='sameSold'>${vo.we_sold}</label>
				<label class='sameStart'>/</label>
				<label class='sameMax'>${vo.we_max}</label>
			</div>				
			<div class='sameinfo2'><h3 class='sameinfoTXT1'>배송예정일</h3>		
				<label class='sameStart'>마감후 2일 후</label>
			</div>
		</div>
		<table style="width: 1024px; text-align: center;">
			<c:if test="${not empty vo.we_photo1name}">
			<tr>        
				<td width="33%"><img class="infoImage"
					src="resources/img/${vo.we_photo1name}"></td>
			</tr>
			</c:if>
			<c:if test="${not empty vo.we_photo2name}">
			<tr>		
				<td><img class="infoImage"
					src="resources/img/${vo.we_photo2name}" style="margin-top: 70px;"></td>
			</tr>
			</c:if>
			<c:if test="${not empty vo.we_photo3name}">
			<tr>
				<td><img class="infoImage"
					src="resources/img/${vo.we_photo3name}" style="margin:70px 0 70px 0; "></td>
			</tr>
			</c:if>
		</table>
		
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