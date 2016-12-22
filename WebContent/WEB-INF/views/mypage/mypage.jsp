<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/EyeMOM/resources/css/mypage.css">
</head>
<body>

	<div class='body'>
			<!-- 마이페이지 배경화면  --><!-- margin : 0 auto는 상하를	 0으로 준뒤 좌우를 auto로 주는 것 -->
			<div class='mypagediv'>	
				<!-- 회원등급 텍스트 -->
				<h3 class='gradeh3'><label>${user.u_nick}</label>님의 등급은 <label>${user.u_lvl}</label>입니다</h3>		
				<!-- 마이페이지 흰색 배경 -->
				<div class='whitediv'>
				<!-- 개인정보란 -->	
				<div class='infopadding'>
						<h3 class='infoh3'>개인정보</h3>
						<a href="mypageModify.do"><input type="button" value="수정하기" class="modifybtn" /></a>
						<hr class='infohr'/>
				</div>
				<!-- 개인정보 테이블 -->		
					<div>
						<table class='infotable'>
							<tr>
								<td class='myfont'>아이디</td>
								<td width="20%"><input type='text' readonly="readonly" class='form-control pagealign' value='${user.u_id}' id='id'/></td>
								<td class='myfont'>E-MAIL</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='${user.u_email}' id='email'/></td>
							</tr>
							<tr>
								<td class='myfont'>이름</td>
								<td><input type='text' readonly="readonly" class='form-control pagealign' value='${user.u_name}' id='name'/></td>
								<td class='myfont'>휴대폰번호</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='${user.u_tel}' id='tel'/></td>
							</tr>
							<tr>
								<td class='myfont'>포인트</td>
								<td><input type='text' readonly="readonly" class='form-control pagealign' value='${user.u_point}' id='point'/></td>
								<td class='myfont'>가입일</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='${user.u_signup_date}' id='signup'/></td>
							</tr>
							<tr>
<!-- 								<td class='myfont'>지워!!!</TD> -->
<!-- 								<td><INPUT TYPE='TEXT' READONLY="REadonly" class='form-control pagealign' value='010-5031-0940' id='tel'/></td> -->
								<td class='myfont'>주소</td>
								<td colspan="3"><input type='text' readonly="readonly" class='form-control1 pagealign' value='${user.u_addr}' id='addr'/></td>
							</tr>
						</table>
					</div>
					
					<!-- 결제내역 + 나의 Q&A -->	<!-- 4개까지만 -->
					<div class='paydiv'>
						<!-- 결제내역 -->
						<div class='payinfodiv' style="float: left;">
							<h3 class='infoh3a'>결제정보</h3>
							<hr class='payhr' align="left"/>
							<table class='pagetable'>
								<tr class='pagetr'>
									<th class='pagetd'>상품명</th>
									<th class='pagetd'>구매일자</th>
									<th class='pagetd'>금액</th>
								</tr>
								<tr>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>99,000</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>99,000</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>99,000</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>99,000</td>
								</tr>
							</table>
							<p class='infomorep'> 
							<a href="myshopping.do" class='infomore'>+ 전체보기</a>
							</p>
						</div> 
						<!-- 문의 내역 -->
						<div class='payinfodiv' style="float: right;">
							<h3 class='infoh3a'>나의 Q&amp;A</h3>
							<hr class='payhr' align="left"/> 
							<table class='pagetable'> 
								<tr class='pagetr'>
									<th class='pagetd'>제목</th>
									<th class='pagetd'>등록일</th>
									<th class='pagetd'>답변 여부</th>
								</tr>
								<c:forEach var='vo' items='${qlist}'>
								<tr>
									<td class='pagetd pagealign'><a href="#">${vo.in_title}</a></td>
									<td class='pagetd pagealign'>${vo.in_date}</td>
									<td class='pagetd pagealign'>
									<c:if test="${vo.in_recount=='n'}">
									미답변
									</c:if>
									<c:if test="${vo.in_recount=='y'}">
									답변완료
									</c:if>
									</td>
								</tr>
								</c:forEach>
							</table>
							<p class='infomorep'> 
							<a href="myqnalist.do" class='infomore'>+ 전체보기</a>
							</p>
						</div>
					</div>
					
					
					<!-- 내가 쓴 글 + 내가 쓴 댓글 -->	<!-- 4개까지만 -->
					<div class='writediv'>
						<!-- 내가 쓴 글-->
						<div class='payinfodiv' style="float: left;">
							<h3 class='infoh3a'>내가 쓴 글</h3>
							<hr class='payhr' align="left"/>
							<table class='pagetable'>
								<tr class='pagetr'>
									<th class='pagetd'>글번호</th>
									<th class='pagetd'>제목</th>
									<th class='pagetd'>등록일</th>
								</tr>
								<c:forEach var='vo' items='${blist}'>
								<tr>
									<td class='pagetd pagealign'>${vo.b_no}</td>
									<td class='pagetd pagealign'><a href="boardview.do?b_no=${vo.b_no }">${vo.b_title}</a></td>
									<td class='pagetd pagealign'>${vo.b_date}</td>
								</tr>
								</c:forEach>
							</table>
							<p class='infomorep'> 
							<a href="myboard.do" class='infomore'>+ 전체보기</a>
							</p>
						</div>
						
						<!-- 내가 쓴 댓글 -->
						<div class='payinfodiv' style="float: right;">
							<h3 class='infoh3a'>내가 쓴 댓글</h3>
							<hr class='payhr' align="left"/>
							<table class='pagetable'>
								<tr class='pagetr'>
									<th class='pagetd'>제목</th>
									<th class='pagetd'>내용</th>
									<th class='pagetd'>등록일</th>
								</tr>
								<c:forEach var='rvo' items='${rlist}'>
								<tr>
									<td class='pagetd pagealign'>${rvo.re_no}</td>
									<td class='pagetd pagealign'><a href="boardview.do?b_no=${rvo.b_no}">${rvo.re_content}</a></td>
									<td class='pagetd pagealign'>${rvo.re_date}</td>
								</tr>
								</c:forEach>
							</table>
							<p class='infomorep'> 
							<a href="replyboard.do" class='infomore'>+ 전체보기</a>
							</p>
						</div>
					</div>
					
					<!-- 테이블과 버튼  사이 간격 -->
					<div class='btnspace'></div>
					
					<!-- 나가기 버튼 -->
					<div class='pagealign'>
						<a href='#' style="margin: 0px auto;"><input type="button" value='나가기' class='exitbtn'></a>
					<!-- 회원탈퇴 버튼 -->
						<a href='#' style="margin: 0px auto;"><input type="button" value='회원탈퇴' class='leavebtn'></a>
					</div>
				</div>
			</div>
	</div>
</body>
</html>