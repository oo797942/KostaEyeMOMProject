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
    jQuery("form[name=frm]").attr("action","tip.do?title=tip").submit();
}

	function writeBoard(){
// 		var num = $('#num').text();	
// 		alert(num);
		var lb = $("#lb").text();
		alert(lb);
		location.href = "boardInsert.do?keyword=${title}";
	}
</script>

</head>    
<body>
  <div class="body">
	<div style="text-align: center;">
		<div class='bottom1'>
			<!-- 게시판 카테고리 -->
			
			
<form name="frm">
    <input type="hidden" name="pageNo" /><!-- //페이지 번호 -->

			
			
			<div id="board1" style="width: 78%">
			<c:if test="${title=='tip'}">
				<label class='boardlabel titlelabel' id="lb">육아꿀팁</label> 
			</c:if>
			<c:if test="${title=='qna_board'}">
				<label class='boardlabel titlelabel' id="lb">묻고 말하기</label> 
			</c:if>
			<c:if test="${title=='used'}">
				<label class='boardlabel titlelabel' id="lb">중고장터</label> 
			</c:if>
			
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
						<td class='boardtd' >글번호</td>
						<td class='boardtd' id='boardtdtitle'>제목</td>
						<!-- 게시판  -->
						<td class='boardtd'>작성자</td>
						<td class='boardtd'>작성일</td>
						<td class='boardtd'>추천수</td>
						<td class='boardtd'>조회수</td>
					</tr>
			<c:forEach var='vo' items='${list}'>
					<tr>
						<!-- 글번호 -->
						<td class='boardtd' id='num' >${vo.b_no }</td>
						<!-- 제목 -->
						<td class='boardtd'>
						<c:choose>
						<c:when test="${empty sessionScope.user}">
							<a href="#test-popup" class="open-popup-link">
								<c:choose>
								<c:when test="${vo.b_scate=='buy'}">
							  	 [삽니다]	${vo.b_title}
							  </c:when>
							  <c:when test="${vo.b_scate=='sell'}">
							  	 [팝니다]	${vo.b_title}
							  </c:when>
							  <c:otherwise>
								${vo.b_title }
								</c:otherwise>
							</c:choose>	
							</a>
						</c:when>	
						<c:otherwise>	<!-- 세선정보가 있을경우 사용자 정보 show -->
							<a href="boardview.do?b_no=${vo.b_no }">
								<c:choose>
								<c:when test="${vo.b_scate=='buy'}">
							  	 [삽니다]	${vo.b_title}
							  </c:when>
							  <c:when test="${vo.b_scate=='sell'}">
							  	 [팝니다]	${vo.b_title}
							  </c:when>
							  <c:otherwise>
								${vo.b_title }
								</c:otherwise>
							</c:choose>	
							</a>
						</c:otherwise>	
						</c:choose>
							<!-- 게시글 댓글 수  -->
							<label>&nbsp;[${vo.b_recount}]</label>	
						</td>
						<!-- 작성자 -->
						<td class='boardtd'>${vo.b_nick }</td>
						<!-- 작성일 -->
						<td class='boardtd'>${vo.b_date }</td>
						<!-- 추천수 -->
						<td class='boardtd'>${vo.b_good }</td>
						<!-- 조회수 -->
						<td class='boardtd'>${vo.b_count }</td>
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
			
		
<!-- 						뒤로가기 버튼 -->
<!-- 						<li><a href="#" class="prev">&laquo;</a></li> -->
<!-- 						<li><a href="#" class="active">1</a></li> -->
<!-- 						<li><a href="#">2</a></li> -->
<!-- 						<li><a href="#">3</a></li> -->
<!-- 						<li><a href="#">4</a></li> -->
<!-- 						<li><a href="#">5</a></li> -->
<!-- 						<li><a href="#">6</a></li> -->
<!-- 						<li><a href="#">7</a></li> -->
<!-- 						<li><a href="#">8</a></li> -->
<!-- 						<li><a href="#">9</a></li> -->
<!-- 						<li><a href="#">9</a></li> -->
<!-- 						앞으로 가기 버튼 -->
<!-- 						<li><a href="#" class="next">&raquo;</a></li> -->
	
					<c:choose>
    				<c:when test="${empty sessionScope.user}">
    				<!-- 글쓰기 버튼 -->
					<a href="#test-popup" class="open-popup-link">
					<input type="button" value='글쓰기' class='btn writebtn writelabel' style="margin-bottom: 25px;position: relative;left: 215px"/>
					</a>
					</c:when>
					<c:otherwise>	<!-- 세선정보가 있을경우 사용자 정보 show -->
					<input type="button"  onclick='writeBoard()' value='글쓰기' class='btn writebtn writelabel' style="margin-bottom: 25px;position: relative;left: 215px"/>	
					</c:otherwise>	
					</c:choose>
			</div>
			<script
				src='http://codepen.io/fbrz/pen/9a3e4ee2ef6dfd479ad33a2c85146fc1.js'></script>
		</div>
	</div>
	</div>
</body>
</html>