<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title></title>

  <!-- Stylesheets -->
  <link rel="stylesheet" href="resources/css/joinstyle.css">
  <link rel="stylesheet" href="resources/css/joinstyle2.css">
  <!--Google Fonts-->
  <link href='https://fonts.googleapis.com/css?family=Playfair+Display' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>

</head>
<body>
  <div class="container-fluid" >
    <div class="row">

      <div class="col-md-6 left-side">
        <header>
          <span>join us</span>
          <h3>Join Us<br> </h3>
        </header>
      </div>
      <div class="col-md-6 right-side">
      <form id="joinform"  action="join.do" method="post">
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="id" name="u_id"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3"  for="id">
            <span class="input__label-content input__label-content--hoshi" id="idtext">아이디</span>
          </label>
        
        </span>
        <label id="idtext"></label>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="password" id="pass"  name="u_pass"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="pass">
            <span class="input__label-content input__label-content--hoshi" id="passtext">비밀번호</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="password" id="passchk" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="passchk">
            <span class="input__label-content input__label-content--hoshi" id="passchktext">비밀번호 확인</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="name" name="u_name"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="name">
            <span class="input__label-content input__label-content--hoshi" id="nametext">이름</span>
          </label>
        </span>
                <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="nick"  name="u_nick"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="nick">
            <span class="input__label-content input__label-content--hoshi" id="nicktext">닉네임</span>
          </label>
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="tel" name="u_tel" />
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="tel">
            <span class="input__label-content input__label-content--hoshi" id="teltext">전화번호</span>
          </label> 	
        </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="email" name="u_email"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="email">
            <span class="input__label-content input__label-content--hoshi" id="emailtext">E-MAIL</span>
          </label>
                  </span>
        <span class="input input--hoshi">
          <input class="input__field input__field--hoshi" type="text" id="addr" name="u_addr"/>
          <label class="input__label input__label--hoshi input__label--hoshi-color-3" for="addr">
            <span class="input__label-content input__label-content--hoshi" id="addrtext">주소</span>
          </label>
        </span>
         
        <div class="cta">
          <input type="button" class="btn btn-primary pull-left" value="Sign-Up Now" id="join" />
         <p/>   
          <span><a href="#">I am already a member</a></span>
        </div>
        </form>
<!--         <ul class="social list-inline"> -->
<!--           <li><a href="#">Facebook</a></li> -->
<!--           <li><a href="#">Twitter</a></li> -->
<!--           <li><a href="#">Linkedin</a></li> -->
<!--         </ul> -->
	<p>&nbsp;</p>
		<p>&nbsp;</p>
			<p>&nbsp;</p>
      </div>
    </div>
  </div>


<!-- Scripts -->
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->
<script src="resources/js/scripts.js"></script>
<script src="resources/js/classie.js"></script>
<script>		
  $(function() {
	  //가입정보를 올바르게 입력했는지 체크하는 배열
	  var collect = new Array();
	  for(var i = 0; i<8; i++){
		collect[i] = false;
	  }
	  
	  $("#id").blur(function(){
	var id = $("#id").val();
	var reId = null;
	   $.ajax({
	        url: "idcheck.do?u_id="+id,
	        type: 'GET',
	       	success: function(id){
	        	   reId = id;
	           },
	       error:function(err){
	    	   alert(err);
	       }
	           });
	//아이디 입력여부 검사
	if(id=="")
	{
		$("#idtext").css("color","red");
		$("#idtext").text("아이디를 입력하지 않았습니다.");
		collect[0] = false;
	}
	//아이디에 공백 사용하지 않기
	else if (id.indexOf(" ")>=0)
	{
		$("#idtext").css("color","red");
		$("#idtext").text("아이디에 공백을 사용할 수 없습니다.");
		collect[0] = false;
	}else if ((new RegExp(/[^a-z|^0-9]/gi)).test(id)) {
		$("#idtext").css("color","red");
		$("#idtext").text("아이디는 영숫자 조합만 사용할 수 있습니다.");
		collect[0] = false;
	}
	//아이디 중복체크
	else if (id==reId) {
		$("#idtext").css("color","red");
		$("#idtext").text("이미 사용중인 아이디입니다.");
		collect[0] = false;
	}
	
	//아이디 길이 체크 (6~12자)
	else if (id.length<6 || id.length>12)
	{
		$("#idtext").css("color","red");
		$("#idtext").text("아이디를 6~12자까지 입력해주세요.");
		collect[0] = false;
	}else{
		$("#idtext").css("color","green");
		$("#idtext").text("아이디가 입력되었습니다.");		
		collect[0] = true;
	}
	  });
	  
	  $("#pass").blur(function(){
		var pass = $("#pass").val();
		  //비밀번호 입력여부 체크
		  if(pass=="")
		  {
				$("#passtext").css("color","red");
			  $("#passtext").text("비밀번호를 입력하지 않았습니다.");
				collect[1] = false;
		  }else if (pass.indexOf(" ")>=0)
			{
				$("#passtext").css("color","red");
				$("#passtext").text("비밀번호에 공백을 사용할 수 없습니다.");
				collect[1] = false;
			}else if ((new RegExp(/[^a-z|^0-9]/gi)).test(pass)) {
				$("#passtext").css("color","red");
				$("#passtext").text("비밀번호는 영숫자 조합만 사용할 수 있습니다.");
				collect[1] = false;
			}
		  //비밀번호 길이 체크(4~8자 까지 허용)
		  else if (pass.length<4 || pass.length>12)
		  {
				$("#passtext").css("color","red");
			  $("#passtext").text("비밀번호를 4~12자까지 입력해주세요.");
				collect[1] = false;
		  }else{
				$("#passtext").css("color","green");
				  $("#passtext").text("비밀번호가 입력되었습니다.");
					collect[1] = true;
		  }

	  });
	  
	  $("#passchk").blur(function(){
			var pass = $("#pass").val();
			var passchk = $("#passchk").val();
		  //비밀번호와 비밀번호 확인 일치여부 체크
		  		  if(pass=="")
		  {
				$("#passchktext").css("color","red");
			  $("#passchktext").text("비밀번호를 입력하지 않았습니다.");
				collect[2] = false;
		  }else if (pass.indexOf(" ")>=0)
			{
				$("#passchktext").css("color","red");
				$("#passchktext").text("비밀번호에 공백을 사용할 수 없습니다.");
				collect[2] = false;
			} else if (pass!=passchk)
		  {
				$("#passchktext").css("color","red");			  
		   $("#passchktext").text("비밀번호가 일치하지 않습니다");		
			collect[2] = false;
		  }else{
				$("#passchktext").css("color","green");
				   $("#passchktext").text("비밀번호가 일치합니다.");				
					collect[2] = true;
		  }
		  
	  
	  });
	  
	$("#name").blur(function(){
		
	var name = $("#name").val();
	var pattern = /([^가-힣\x20])/; 
	var regType1 = /^[ㄱ-ㅎ|a-z|A-Z|0-9|\*]+$/;
	if (regType1.test(name)) { 
		$("#nametext").css("color","red");
		$("#nametext").text('이름은 한글만 입력해주세요.'); 
		collect[3] = false;
	}else if(pattern.test(name)){
		$("#nametext").css("color","red");
		$("#nametext").text('이름은 한글만 입력해주세요.'); 		
		collect[3] = false;
	}else if(name.length<2){
		$("#nametext").css("color","red");
		$("#nametext").text('이름은 두 글자 이상 입력해주세요.'); 		
		collect[3] = false;
	}else{
		$("#nametext").css("color","green");
		$("#nametext").text('이름이 입력되었습니다.'); 
		collect[3] = true;
	}
	});
	
	$("#nick").blur(function(){
		
		var nick = $("#nick").val();
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		
		if( special_pattern.test(nick)){
			$("#nicktext").css("color","red");
			  $("#nicktext").text('닉네임에 특수문자는 사용할 수 없습니다.');
				collect[4] = false;
		}else if (nick.length<2 || nick.length>8)
		  {
			$("#nicktext").css("color","red");
		  $("#nicktext").text("닉네임을 2~8자까지 입력해주세요.");
			collect[4] = false;
		  }else{
			$("#nicktext").css("color","green");
			  $("#nicktext").text("닉네임이 입력되었습니다.");
				collect[4] = true;
		  }
	});
	
	$("#email").blur(function(){
		var email = $("#email").val();
		var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		if(regex.test(email) === false) {
			$("#emailtext").css("color","red");
			$("#emailtext").text("잘못된 이메일 형식입니다.");
			collect[5] = false;		 
		} else {
			$("#emailtext").css("color","green");
			$("#emailtext").text("이메일이 입력되었습니다.");
			collect[5] = true;		 			
		}
	});
	
	$("#tel").blur(function(){
		var tel = $("#tel").val();
		var regTel = /^(01[016789]{1}|070|02|0[3-9]{1}[0-9]{1})-[0-9]{3,4}-[0-9]{4}$/;
		if(!regTel.test(tel)) {
			$("#teltext").css("color","red");		
			$("#teltext").text('올바른 전화번호를 입력하세요.');
			collect[6] = false;		 
		}else{
			$("#teltext").css("color","green");
			$("#teltext").text("전화번호가 입력되었습니다.");			
			collect[6] = true;		 
		}
	});
	
	$("#addr").blur(function(){
		var addr = $("#addr").val();  
		if(addr=="")
		  {
				$("#addrtext").css("color","red");
			  $("#addrtext").text("주소를 입력하지 않았습니다.");
				collect[7] = false;		 
		  }else{
				$("#addrtext").css("color","green");
				  $("#addrtext").text("주소가 입력되었습니다.");
					collect[7] = true;		 
		  }
	});
	
	$("#join").click(function(){
		for(var i = 0; i<8; i++){
			if(collect[i]==false){
				alert("양식을 다시 확인해주세요.");
				return;
			}
		}
		$("#joinform").submit();
	});
	
	
    // trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
    if (!String.prototype.trim) {
      (function() {
        // Make sure we trim BOM and NBSP
        var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
        String.prototype.trim = function() {
          return this.replace(rtrim, '');
        };
      })();
    }

    [].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
      // in case the input is already filled..
      if( inputEl.value.trim() !== '' ) {
        classie.add( inputEl.parentNode, 'input--filled' );
      }

      // events:
      inputEl.addEventListener( 'focus', onInputFocus );
      inputEl.addEventListener( 'blur', onInputBlur );
    } );

    function onInputFocus( ev ) {
      classie.add( ev.target.parentNode, 'input--filled' );
    }

    function onInputBlur( ev ) {
      if( ev.target.value.trim() === '' ) {
        classie.remove( ev.target.parentNode, 'input--filled' );
      }
    }
  });
</script>

</body>
</html>
