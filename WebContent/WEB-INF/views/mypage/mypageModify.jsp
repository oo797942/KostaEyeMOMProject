<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='css/mypageModify.css'>
</head>
<body>

	<div class='body'>
		<!-- 마이페이지 배경화면  --><!-- margin : 0 auto는 상하를	 0으로 준뒤 좌우를 auto로 주는 것 -->
		<div class='mymodifydiv'>
			<!-- 회원정보 수정 텍스트-->
			<h2 class='modifyh2'>회원정보 수정</h2>
			<!-- 마이페이지 흰색 배경 -->
			<div class='whitediv2'>
					<!-- 정보 수정 테이블 div -->
					<div class='modifytablediv'>
						<table class='modifytable' border="1">
							<tr class='modifytr'>
								<th class='modifyfont modifyth' width="20%">닉네임</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text' class='form-control ' value='wamsi98' id='id'/>
								<input type="button" value='닉네임 변경'  class='modifybtn'  /></div></th>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>이름</th>
								<th class='modifyth'><input type='text'  class='form-control ' value='임경민' id='name' readonly="readonly"/>
								</th>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>E-MAIL</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text' class='form-control ' value='wamsi98@naver.com' id='email'/>
								<input type="button" value='E-MAIL 변경'  class='modifybtn'  /></div></th>
							</tr>
											
							<!-- 비밀번호 변경 테이블 --> <!-- th안에 테이블 또 열어줘야함 -->
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>비밀번호</th>
								<td class='modifyth'>
									<table>
										<tr>
											<td colspan="2" style="font-size: 11pt; font-family: Dotum; color: #777;">비밀번호는 4~12자 이내로 영문 (대문자,소문자), 숫자  2가지 조합 모두 조합하셔서 작성하시면 됩니다.</td>
										</tr>
										<tr style="">
											<th style="font-weight: normal; text-align:left; padding: 10px 6px 10px 0; background-color: #fff; white-space: nowrap; width: 1%; font-size: 11pt; font-family: Dotum; color: #777;">현재 비밀번호</th>
											<th><input type="password" class='form-control' style="height: 18px;margin-right:200px; line-height: 18px;" /></th>
										</tr>	
										<tr>
											<th style="font-weight: normal; text-align:left; padding: 10px 6px 10px 0; background-color: #fff; white-space: nowrap; width: 1%; font-size: 11pt; font-family: Dotum; color: #777;">신규 비밀번호</th>
											<th><input type="password" class='form-control' style="height: 18px;margin-right:200px; line-height: 18px;" /></th>
										</tr>	
										<tr>
											<th style="font-weight: normal; text-align:left; padding: 10px 6px 10px 0; background-color: #fff; white-space: nowrap; width: 1%; font-size: 11pt; font-family: Dotum; color: #777;">비밀번호 다시 입력</th>
											<th><input type="password" class='form-control' style="height: 18px;margin-right:200px; line-height: 18px;" /></th>
										</tr>	
										<tr>
											<th style="font-weight: normal; text-align:left; padding: 10px 6px 10px 0; background-color: #fff; white-space: nowrap; width: 1%;"></th>
											<th><input type="button" value='비밀번호 변경'  class='modifybtn' /></th>
										</tr>	
									</table>
								</td>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>휴대폰번호</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text'  class='form-control ' value='010-5031-0940' id='tel'/>
								<input type="button" value='휴대폰번호 변경'  class='modifybtn'  /></div></th>
							</tr>
							<tr class='modifytr'>	
								<th class='modifyfont modifyth'>생년월일</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text'  class='form-control ' value='2016-12-08' id='signup_date'/>
								<input type="button" value='생년월일 변경'  class='modifybtn'  /></div></th>
							</tr>
							<tr class='modifytr'>	
								<th class='modifyfont modifyth'>주소</th>
								<th class='modifyth'>
								<input type='text'  class='form-control1 ' value='경기도 용인시 수지구 죽전동 현암로 134-1 601동 803호 ' id='addr'/>
								<input type="button" value='주소 변경'  class='modifybtn'  style="margin-top: 15px;"/>
								</th>
							</tr>
						</table>
					</div>
			</div>
		</div>
	</div>

</body>
</html>