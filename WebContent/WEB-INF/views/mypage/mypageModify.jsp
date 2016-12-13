<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#nickModify").click(function(){

		$("#u_nick").attr("disabled", false); //해제 
		$("#nickModify").hide();
	});
	
	$("#emailModify").click(function(){
		$("#u_email").attr("disabled", false); //해제 
		$("#emailModify").hide();
	});
	
	$("#passModify").click(function(){
		$("#u_pass").attr("disabled", false); //해제 
		$("#u_passNew").attr("disabled", false); //해제 
		$("#u_passChk").attr("disabled", false); //해제 
		$("#passModify").hide();
	});
	
	$("#telModify").click(function(){
		$("#u_tel").attr("disabled", false); //해제 
		$("#telModify").hide();		
	});
	
	$("#addrModify").click(function(){
		$("#u_addr").attr("disabled", false); //해제 
		$("#addrModify").hide();		

	});
});
</script>
<link rel='stylesheet' href='/EyeMOM/resources/css/mypageModify.css'>
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
								<input type='text' class='form-control ' value='wamsi98' id='u_nick' disabled="disabled" />
								<input type="button" id="nickModify" value='닉네임 변경'  class='modifybtn'  /></div></th>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>이름</th>
								<th class='modifyth' >
								<span class='modifyspan'><input type='text'  class='form-control ' value='임경민' id='name'  disabled="disabled"/>
								</span>	
								</th>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>E-MAIL</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text' class='form-control ' value='wamsi98@naver.com' id='u_email' disabled="disabled" />
								<input type="button" value='E-MAIL 변경'  class='modifybtn' id="emailModify" /></div></th>
							</tr>
											
							<!-- 비밀번호 변경 테이블 --> <!-- th안에 테이블 또 열어줘야함 -->
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>비밀번호</th>
								<td class='modifyth'>
									<table>
										<tr>
											<td colspan="2" class='passfont'>비밀번호는 4~12자 이내로 영문 (대문자,소문자), 숫자  2가지 조합 모두 조합하셔서 작성하시면 됩니다.</td>
										</tr>
										<tr>
											<th class='passfont1'>현재 비밀번호</th>
											<th><input type="password" class='form-control passinput' class='passinput' id="u_pass" disabled="disabled" /></th>
										</tr>	
										<tr>
											<th class='passfont1'>신규 비밀번호</th>
											<th><input type="password" class='form-control passinput' id="u_passNew" disabled="disabled"/></th>
										</tr>	
										<tr>
											<th class='passfont1'>비밀번호 다시 입력</th>
											<th><input type="password" class='form-control passinput' id="u_passChk"  disabled="disabled"/></th>
										</tr>	
										<tr>
											<th class='passfont1'></th>
											<th><input type="button" value='비밀번호 변경'  class='modifybtn' id="passModify"/></th>
										</tr>	
									</table>
								</td>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>휴대폰번호</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text'  class='form-control ' value='010-5031-0940' id='u_tel' disabled="disabled"/>
								<input type="button" value='휴대폰번호 변경'  class='modifybtn' id="telModify" /></div></th>
							</tr>
							<tr class='modifytr'>	
								<th class='modifyfont modifyth'>주소</th>
								<th class='modifyth'>
								<input type='text'  class='form-control1 ' value='경기도 용인시 수지구 죽전동 현암로 134-1 601동 803호 ' id='u_addr' disabled="disabled" />
								<input type="button" value='주소 변경'  class='modifybtn1'  id="addrModify"  />
								</th>
							</tr>
							<tr> 
							<th  class='modifyth' class='modifybtnth' colspan="2">
							<input type="button" id="Modify" value='회원정보 수정'  class='modifybtn'  style="margin: 0 auto;"/>
							</th>
							</tr>
						</table>
					</div>
			</div>
		</div>
	</div>

</body>
</html>