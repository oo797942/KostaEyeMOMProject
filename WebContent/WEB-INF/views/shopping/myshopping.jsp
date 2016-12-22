<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/style.css">
<script type="text/javascript">
function fn_movePage(val){
    jQuery("input[name=pageNo]").val(val);
    jQuery("form[name=frm]").attr("method", "post");
    jQuery("form[name=frm]").attr("action","myshopping.do").submit();
}


</script>
</head>    
<body>
  <div class="body">
	<div style="text-align: center;">
		<div class='bottom1'>
<form name="frm">
    <input type="hidden" name="pageNo" /><!-- //페이지 번호 -->
			<!-- 게시판 카테고리 -->
			<div id="board1" style="width: 78%">
				<label class='boardlabel titlelabel' id="lb">결제 내역</label> 
				<!-- 검색 -->
				<div class='form-inline selectlabel'>
							<!-- 검색 셀렉트 박스 -->
							<select id='select1'
								class="form-control">
								<option>제목</option>
								<option>작성자</option>
							</select>
							<!-- 검색창 -->
							<input type="text" name='search1' id='search1'
								class='form-control'> 
							<!-- 검색버튼 -->
							<input type="button"
								name='searchbtn1' id='searchbtn1' class='btn' value='검색'>
				</div>
				<!-- 게시판 -->
				<table class='boardtable'> 
					<tr id="title1">
						<td class='boardtd' >주문번호</td>
						<td class='boardtd' >상품명</td>
						<td class='boardtd' >배송상태</td>
						<td class='boardtd'>주문일</td>
						<td class='boardtd'>주문 가격</td>
					</tr> 

					<c:forEach var="vo" items="${list}">
					<tr>
						<!-- 이미지 -->
						<td class='boardtd' id='num' style="width: 10%;">${vo.pr_no}</td>
						<!-- 상품명-->
						<td class='boardtd' id='num' >
						<a href="shoppingView.do?b_no=${vo.b_no}">
						<img src="resources/img/${vo.pr_photo}"  style="width: 50px; height: 50px;"/>
						${vo.pr_title}
						</a>
						</td>
						<!-- 배송상태 -->
						<td class='boardtd' style="width: 15%;"> 배송준비중

						<!-- 주문일 -->
						<td class='boardtd' style="width: 15%;">${vo.pr_date }</td>
						
						<td class='boardtd' style="width: 15%;">${vo.pr_price }</td>
					</tr>
					</c:forEach>
				</table>
			</div>
			<!-- 게시판 사이 공간 -->
			<div class='space1'></div>
			<!-- 페이징 -->
			<div class='form-inline'>
					<ul class="pagination modal-1">

    <c:if test="${pageVO.pageNo != 0}">
        <c:if test="${pageVO.pageNo > pageVO.pageBlock}">
            <li><a href="javascript:fn_movePage(${pageVO.firstPageNo})" style="text-decoration: none;">[첫 페이지]</a></li>
       </c:if>
       <c:if test="${pageVO.pageNo != 1}">
           <li><a href="javascript:fn_movePage(${pageVO.prevPageNo})" style="text-decoration: none;">[이전]</a></li>
        </c:if>
        <span>
            <c:forEach var="i" begin="${pageVO.startPageNo}" end="${pageVO.endPageNo}" step="1">
                <c:choose>
                    <c:when test="${i eq pageVO.pageNo}">
                       <li > <a href="javascript:fn_movePage(${i})" style="text-decoration: none;"  class="active">
                            <font style="font-weight: bold;">${i}</font>
                        </a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="javascript:fn_movePage(${i})" style="text-decoration: none;">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </span>
        <c:if test="${pageVO.pageNo != pageVO.finalPageNo }">
            <li><a href="javascript:fn_movePage(${pageVO.nextPageNo})" style="text-decoration: none;">[다음]</a></li>
        </c:if>
        <c:if test="${pageVO.endPageNo < pageVO.finalPageNo }">
            <li><a href="javascript:fn_movePage(${pageVO.finalPageNo})" style="text-decoration: none;">[마지막 페이지]</a></li>
        </c:if>
    </c:if>
    				</ul>
    </div>
   </form>
			<script
				src='http://codepen.io/fbrz/pen/9a3e4ee2ef6dfd479ad33a2c85146fc1.js'></script>
		</div>
	</div>
	</div>
</body>
</html>