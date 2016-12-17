<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
    //페이지 이동
    function fn_movePage(val){
        jQuery("input[name=pageNo]").val(val);
        jQuery("form[name=frm]").attr("method", "post");
        jQuery("form[name=frm]").attr("action","tip.do?title=tip").submit();
    }

</script>
</head>
<body>


<form name="frm">
    <input type="hidden" name="pageNo" /><!-- //페이지 번호 -->

        <table>
            <thead>
                <tr>
						<td class='boardtd' >글번호</td>
						<td class='boardtd' id='boardtdtitle'>제목</td>
						<!-- 게시판  -->
						<td class='boardtd'>작성자</td>
						<td class='boardtd'>작성일</td>
						<td class='boardtd'>추천수</td>
						<td class='boardtd'>조회수</td>
                </tr>
            </thead>

            <c:forEach items="${list }" var="resutList">
                <tr>
                <td class='boardtd' id='num' >${resutList.b_no }</td>
						<td class='boardtd'>${resutList.b_title }</td>
	<!-- 작성자 -->
						<td class='boardtd'>${resutList.b_nick }</td>
<!-- 						작성일 -->
						<td class='boardtd'>${resutList.b_date }</td>
<!-- 						추천수 -->
						<td >${resutList.b_good }</td>
<!-- 						조회수 -->
						<td >0</td>
                </tr>
            </c:forEach>

        </table>
    <div id="page">
    <c:if test="${pageVO.pageNo != 0}">
        <c:if test="${pageVO.pageNo > pageVO.pageBlock}">
            <a href="javascript:fn_movePage(${pageVO.firstPageNo})" style="text-decoration: none;">[첫 페이지]</a>
       </c:if>
       <c:if test="${pageVO.pageNo != 1}">
           <a href="javascript:fn_movePage(${pageVO.prevPageNo})" style="text-decoration: none;">[이전]</a>
        </c:if>
        <span>
            <c:forEach var="i" begin="${pageVO.startPageNo}" end="${pageVO.endPageNo}" step="1">
                <c:choose>
                    <c:when test="${i eq pageVO.pageNo}">
                        <a href="javascript:fn_movePage(${i})" style="text-decoration: none;">
                            <font style="font-weight: bold;">${i}</font>
                        </a>
                    </c:when>
                    <c:otherwise>
                        <a href="javascript:fn_movePage(${i})" style="text-decoration: none;">${i}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </span>
        <c:if test="${pageVO.pageNo != pageVO.finalPageNo }">
            <a href="javascript:fn_movePage(${pageVO.nextPageNo})" style="text-decoration: none;">[다음]</a>
        </c:if>
        <c:if test="${pageVO.endPageNo < pageVO.finalPageNo }">
            <a href="javascript:fn_movePage(${pageVO.finalPageNo})" style="text-decoration: none;">[마지막 페이지]</a>
        </c:if>
    </c:if>
    </div>
</form>
</body>
</html>