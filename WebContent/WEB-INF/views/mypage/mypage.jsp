<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<h3 class='gradeh3'><label>이제희</label>님의 등급은 <label>하스스톤정지</label>입니다</h3>		
				<!-- 마이페이지 흰색 배경 -->
				<div class='whitediv'>
				<!-- 개인정보란 -->	
				<div class='infopadding'>
						<h3 class='infoh3'>개인정보</h3>
						<input type="button" value="수정하기" class="modifybtn" />
						<hr class='infohr'/>
				</div>
				<!-- 개인정보 테이블 -->		
					<div>
						<table class='infotable'>
							<tr>
								<td class='myfont'>아이디</td>
								<td width="20%"><input type='text' readonly="readonly" class='form-control pagealign' value='wamsi98' id='id'/></td>
								<td class='myfont'>E-MAIL</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='wamsi98@naver.com' id='email'/></td>
							</tr>
							<tr>
								<td class='myfont'>이름</td>
								<td><input type='text' readonly="readonly" class='form-control pagealign' value='임경민' id='name'/></td>
								<td class='myfont'>생년월일</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='2016-12-08' id='signup_date'/></td>
							</tr>
							<tr>
								<td class='myfont'>포인트</td>
								<td><input type='text' readonly="readonly" class='form-control pagealign' value='9999' id='point'/></td>
								<td class='myfont'>가입일</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='2016-20-10' id='signup'/></td>
							</tr>
							<tr>
									<td class='myfont'>휴대폰번호</td>
								<td><input type='text' readonly="readonly" class='form-control pagealign' value='010-5031-0940' id='tel'/></td>
								<td class='myfont'>주소</td>
								<td><input type='text' readonly="readonly" class='form-control1 pagealign' value='경기도 용인시 수지구 죽전동 현암로 134-1 601동 803호 ' id='addr'/></td>
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
									<th class='pagetd'>결제일자</th>
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
							<a href="#" class='infomore'>+ 전체보기</a>
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
								<tr>
									<td class='pagetd pagealign'>집 언제가요?</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>답변 예정</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>집 언제가요?</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>답변 예정</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>집 언제가요?</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>답변 예정</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>집 언제가요?</td>
									<td class='pagetd pagealign'>2016-12-10</td>
									<td class='pagetd pagealign'>답변 예정</td>
								</tr>
							</table>
							<p class='infomorep'> 
							<a href="#" class='infomore'>+ 전체보기</a>
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
								<tr>
									<td class='pagetd pagealign'>4</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>3</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>2</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>1</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
							</table>
							<p class='infomorep'> 
							<a href="#" class='infomore'>+ 전체보기</a>
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
								<tr>
									<td class='pagetd pagealign'>4</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>3</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>2</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
								<tr>
									<td class='pagetd pagealign'>1</td>
									<td class='pagetd pagealign'>앙기모뤼</td>
									<td class='pagetd pagealign'>2016-12-10</td>
								</tr>
							</table>
							<p class='infomorep'> 
							<a href="#" class='infomore'>+ 전체보기</a>
							</p>
						</div>
					</div>
					
					<!-- 회원탈퇴 버튼 -->
					<div class='pagealignr'>
						<label style="font-size: 10pt">탈퇴를 원하시면 우측의 회원탈퇴 버튼을 눌러주세요</label>
						<a href='#' style="margin: 0px auto;"><input type="button" value='회원탈퇴' class='leavebtn'></a>
					</div>
					
					<!-- 회원탈퇴와 나가기 버튼 사이 공백 -->
					<div class='btnspace'></div>
					
					<!-- 나가기 버튼 -->
					<div class='pagealign'>
						<a href='#' style="margin: 0px auto;"><input type="button" value='나가기' class='exitbtn'></a>
					</div>
					
				</div>
			</div>
	</div>
</body>
</html>