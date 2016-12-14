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
	  
		var collect = new Array();
	  for(var i = 0; i<7; i++){
		collect[i] = true;
	  }
	
	$("#u_nick").blur(function(){
		
		var nick = $("#u_nick").val();
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		var reNick= null;
		
		$.ajax({
	        url: "nickcheck.do",
	        async: false,
	        data : {"u_nick" : $("#u_nick").val() },
	       	type: 'get',
	       	success: function(result){
	       		reNick=result;
	           }
	           });
		
		if( special_pattern.test(nick)){
			$("#nicktext").css("color","red");
			  $("#nicktext").text('닉네임에 특수문자는 사용할 수 없습니다.');
				collect[0] = false;
		}else if (nick.indexOf(" ")>=0)
		{
			$("#nicktext").css("color","red");
			$("#nicktext").text("닉네임에 공백을 사용할 수 없습니다.");
			collect[0] = false;
		}
		else if (nick.length<2 || nick.length>8)
		  {
			$("#nicktext").css("color","red");
		  $("#nicktext").text("닉네임을 2~8자까지 입력해주세요.");
			collect[0] = false;
		  }else if(reNick==1){
			  $("#nicktext").css("color","red");
			  $("#nicktext").text("중복된 닉네임입니다.");
		  }	else{
			$("#nicktext").css("color","green");
			  $("#nicktext").text("닉네임이 입력되었습니다.");
				collect[0] = true;
		  }
	});
	
$("#u_pass1").blur(function(){
	
	var pass = $("#u_pass1").val();
	var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
	var rePass= null;
	
	$.ajax({
        url: "idcheck.do",
        async: false,
        data : {"u_id" : $("#u_id").val(),
        "u_pass" : $("#u_pass1").val()
        },
       	type: 'get',
       	success: function(result){
       		rePass=result;
           }
           });

	if(rePass!=0){
		$("#passtext").css("color","green");
		  $("#passtext").text("비밀번호가 일치합니다.");
			collect[1] = false;
	}else{
		$("#passtext").css("color","red");
		$("#passtext").text("비밀번호가 일치하지 않습니다.");
			collect[1] = true;
}

});
	
$("#u_passNew").blur(function(){
	var pass = $("#u_passNew").val();
	  //비밀번호 입력여부 체크
	  if(pass=="")
	  {
			$("#newpasstext").css("color","red");
		  $("#newpasstext").text("비밀번호를 입력하지 않았습니다.");
			collect[2] = false;
	  }else if (pass.indexOf(" ")>=0)
		{
			$("#newpasstext").css("color","red");
			$("#newpasstext").text("비밀번호에 공백을 사용할 수 없습니다.");
			collect[2] = false;
		}else if ((new RegExp(/[^a-z|^0-9]/gi)).test(pass)) {
			$("#newpasstext").css("color","red");
			$("#newpasstext").text("비밀번호는 영숫자 조합만 사용할 수 있습니다.");
			collect[2] = false;
		}
	  //비밀번호 길이 체크(4~8자 까지 허용)
	  else if (pass.length<4 || pass.length>12)
	  {
			$("#newpasstext").css("color","red");
		  $("#newpasstext").text("비밀번호를 4~12자까지 입력해주세요.");
			collect[3] = false;
	  }else{
			$("#newpasstext").css("color","green");
			  $("#newpasstext").text("비밀번호가 입력되었습니다.");
				collect[3] = true;
	  }

  });

$("#u_passchk").blur(function(){
	var pass = $("#u_passNew").val();
	var passchk = $("#u_passchk").val();
  //비밀번호와 비밀번호 확인 일치여부 체크
  		  if(pass=="")
  {
		$("#passchktext").css("color","red");
	  $("#passchktext").text("비밀번호를 입력하지 않았습니다.");
		collect[4] = false;
  }else if (pass.indexOf(" ")>=0)
	{
		$("#passchktext").css("color","red");
		$("#passchktext").text("비밀번호에 공백을 사용할 수 없습니다.");
		collect[4] = false;
	} else if (pass!=passchk)
  {
		$("#passchktext").css("color","red");			  
   $("#passchktext").text("비밀번호가 일치하지 않습니다");		
	collect[4] = false;
  }else{
		$("#passchktext").css("color","green");
		   $("#passchktext").text("비밀번호가 일치합니다.");				
			collect[4] = true;
  }
  

});
	
$("#u_tel").blur(function(){
	var tel = $("#u_tel").val();
	var regTel = /^(01[016789]{1}|070|02|0[3-9]{1}[0-9]{1})-[0-9]{3,4}-[0-9]{4}$/;
	if(!regTel.test(tel)) {
		$("#teltext").css("color","red");		
		$("#teltext").text('올바른 전화번호를 입력하세요.');
		collect[5] = false;		 
	}else{
		$("#teltext").css("color","green");
		$("#teltext").text("전화번호가 입력되었습니다.");			
		collect[5] = true;		 
	}
});
	
	
$("#u_addr").blur(function(){
	var addr = $("#u_addr").val();  
	if(addr=="")
	  {
			$("#addrtext").css("color","red");
		  $("#addrtext").text("주소를 입력하지 않았습니다.");
			collect[6] = false;		 
	  }else{
			$("#addrtext").css("color","green");
			  $("#addrtext").text("주소가 입력되었습니다.");
				collect[6] = true;		 
	  }
});

	
	
	
	$("#nickModify").click(function(){

		$("#u_nick").attr("disabled", false); //해제 
		$("#u_nick").val("");
		$("#u_nick").attr("name","u_nick");
		$("#u_nick").focus();
		$("#nickModify").hide();
	});
	
	$("#emailModify").click(function(){
		$("#u_email").attr("disabled", false); //해제 
		$("#u_email").val("");
		$("#u_email").focus();
		$("#emailModify").hide();
	});
	
	$("#passModify").click(function(){
		$("#u_passchk").attr("disabled", false); //해제 
		$("#u_pass1").attr("disabled", false);//해제 
		$("#u_passNew").attr("disabled", false); //해제
		$("#u_pass1").attr("name","u_pass");
		$("#passModify").hide();
	});
	
	$("#telModify").click(function(){
		$("#u_tel").attr("disabled", false); //해제 
		$("#u_tel").val("");
		$("#u_tel").attr("name","u_tel");
		$("#u_tel").focus();
		$("#telModify").hide();		
	});
	
	$("#addrModify").click(function(){
		$("#u_addr").attr("disabled", false); //해제 
		$("#u_addr").val("");
		$("#u_addr").attr("name","u_addr");
		$("#u_addr").focus();
		$("#addrModify").hide();		

	});
	
	
	$("#Modify").click(function(){
		for(var i = 0; i<7; i++){
			if(collect[i]==false){
				alert("양식을 다시 확인해주세요.");
				return;
			}
		}
// 		var nick = null;
// 		var pass = null;
// 		var tel = null;
// 		var addr = null;

// 		$.ajax({
// 	        url: "memberUpdate.do",
// 	        async: false,
// 	        data : {
// 				"u_id": $("#u_id").val(),
// 	        	"u_nick" : $("#u_nick").val(),
// 	            "u_pass" : $("#u_pass1").val(),
// 	            "u_tel" : $("#u_tel").val(),
// 	            "u_addr": $("#u_addr").val()
// 	        },
// 	       	type: 'get',
// 	       	success: function(result){
// 	       		if(result>0){
// 	       			alert("쑤정댐");
// 	       		}
// 	           }
// 	           });
$("#myform").submit();
		
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
					<form  id="myform" action="memberUpdate.do">
						<table class='modifytable' border="1">
							<tr class='modifytr'>
								<th class='modifyfont modifyth' width="20%">닉네임</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text' class='form-control' value='wamsi98' id='u_nick' disabled="disabled" />
								<input type="button" id="nickModify" value='닉네임 변경'  class='modifybtn'  />
								<label for="u_nick" id="nicktext" style="font-size: 13px; font-family: 'lato', sans-serif;" ></label>
								</div></th>
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
<!-- 								<input type="button" value='E-MAIL 변경'  class='modifybtn' id="emailModify" /> -->
								</div></th>
							</tr>
											
							<!-- 비밀번호 변경 테이블 --> <!-- th안에 테이블 또 열어줘야함 -->
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>비밀번호</th>
								<td class='modifyth'>

									<table>
										<tr>
											<td colspan="3" class='passfont'>비밀번호는 4~12자 이내로 영문 (대문자,소문자), 숫자  2가지 조합 모두 조합하셔서 작성하시면 됩니다.</td>
										</tr>
										<tr>
											<th class='passfont1' style="width:250px;">현재 비밀번호</th>
											<th style="padding: 0 0 0 0; margin: 0; width:168px" >
											<input type="password" disabled="disabled" class='form-control passinput'  id="u_pass1" size="21" style="margin: 0;"/>
											</th> 
											<td width="215" style="text-align: left; font-size:13px;" id="passtext">
											</td>
										</tr>	
										<tr>
											<th class='passfont1'>신규 비밀번호</th>
											<th style="padding: 0 0 0 0; margin: 0;"><input type="password" disabled="disabled" class='form-control passinput' id="u_passNew" size="21" style="margin: 0; p"/></th>
										<td style="text-align: left; font-size:13px;" id="newpasstext">
										</td>
										</tr>	
										
										<tr>
											<th class='passfont1'>비밀번호 다시 입력</th>
											<th style="padding: 0 0 0 0; margin: 0;"><input type="password"  disabled="disabled" class='form-control passinput' id="u_passchk" size="21" style="margin: 0;"/></th>
										<td style="text-align: left; font-size:13px;" id="passchktext">
										</td>
										</tr>	
										<tr>
											<th class='passfont1'></th>
											<th><input type="button" value='비밀번호 변경'  class='modifybtn' id="passModify"/>
											
											</th>
										<td></td>
										</tr>	
									</table>
								</td>
							</tr>
							<tr class='modifytr'>
								<th class='modifyfont modifyth'>휴대폰번호</th>
								<th class='modifyth'><div class='form-inline' align="left">
								<input type='text'  class='form-control ' value='010-5031-0940' id='u_tel' disabled="disabled"/>
								<input type="button" value='휴대폰번호 변경'  class='modifybtn' id="telModify" />
								<label for="u_tel" id="teltext" style="font-size: 13px; font-family: 'lato', sans-serif;" ></label>
								</div>
								</th>
							</tr>
							<tr class='modifytr'>	
								<th class='modifyfont modifyth'>주소</th>
								<th class='modifyth'>
								<textarea class='form-control1'  disabled="disabled"  id="u_addr">
경기도 용인시 수지구 죽전동 현암로 134-1 601동 803호
</textarea>
<!-- 								<input type='text'  class='form-control1 ' value='경기도 용인시 수지구 죽전동 현암로 134-1 601동 803호 ' id='u_addr' disabled="disabled" /> -->
								<input type="button" value='주소 변경'  class='modifybtn1'  id="addrModify"  />
								<label for="u_addr" id="addrtext" style="font-size: 13px; font-family: 'lato', sans-serif;" ></label>
								</th>
							</tr>
							<tr> 
							<th  class='modifyth' class='modifybtnth' colspan="2">
							<input type="button" id="Modify" value='회원정보 수정'  class='modifybtn'  style="margin: 0 auto;"/>
							</th>
							</tr>
						</table>
					</form>
					</div>
			</div>
		</div>
	</div>

</body>
</html>