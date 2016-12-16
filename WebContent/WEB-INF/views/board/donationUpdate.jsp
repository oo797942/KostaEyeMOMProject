<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/boardInsert.css">

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#b_photo1").hide();
   	$("#b_photo2").hide();
   	$("#b_photo3").hide();
   	
    $(".photo").on('change', function(){
    	$(this).hide();
    	$(this).next().show();
       fileInfo(this, name);
       
    });
    
    
    $('#delete').click(function(){
    	alert($("#b_no").val());
    	
    	
    	
    		$.ajax({
    	        url: "deletPic.do",
    	        type: 'GET',
    	        data : { "b_no" : $("#b_no").val()},
    	       	success: function(result){
    	       		$('.miri').remove();
    	        	$("#b_photo1").show();
    	       	}
    	     });
    })
});
function fileInfo(f, name){
   var file = f.files; // files 를 사용하면 파일의 정보를 알 수 있음

   // 파일의 갯수만큼 반복
   for(var i=0; i<file.length; i++){
      var reader = new FileReader(); // FileReader 객체 사용
      reader.onload = function(rst){
    	 
         $('#imgs').append('<img src="' + rst.target.result + '" class="miri ">'); // append 메소드를 사용해서 이미지 추가
         // 이미지는 base64 문자열로 추가
         // 이 방법을 응용하면 선택한 이미지를 미리보기 할 수 있음
      }
      reader.readAsDataURL(file[i]); // 파일을 읽는다
   }
}


</script>
<div class='body'>
   <section class="page_head">
      <div align="center">
         <h2 style="margin-top: 40px">게시판 수정</h2>
         <form action="donationupdate.do" style="margin-top:-60px" method='post' enctype='multipart/form-data'>
            <div style="width: 100%" id="board3">
               <div class='form-inline'>
               <!-- 카테고리 선택칸 -->
                  <div>
                     <label id='boardlabel2'>카테고리 &nbsp; </label>
                     <input id="b_no" name="b_no" type="hidden" value="${vo.b_no}"/>
                    <c:if test="${vo.b_cate=='tip'}">
						<input type="text" 
                       value='육아꿀팁' class='form-control inputcate' id='title3' name='b_cate'readonly="readonly"/>
					</c:if>
					<c:if test="${vo.b_cate=='qna_board'}">
						<input type="text" 
                       value='묻고 말하기' class='form-control inputcate' id='title3'name='b_cate' readonly="readonly"/>
					</c:if>
					<c:if test="${vo.b_cate=='kid_sick'}">
						<input type="text" 
                       value='아이가 아파요' class='form-control inputcate' id='title3'name='b_cate' readonly="readonly"/>
					</c:if>
					<c:if test="${vo.b_cate=='rice'}">
						<input type="text" 
                       value='아이의 식단' class='form-control inputcate' id='title3'name='b_cate' readonly="readonly"/>
					</c:if>
					<c:if test="${vo.b_cate=='baby'}">
						<input type="text" 
                       value='아이 자랑' class='form-control inputcate' id='title3'name='b_cate' readonly="readonly"/>
					</c:if>
                  </div>
               </div>
               <div class='form-inline'>
                  <!-- 제목 입력칸 -->
                  <div>
                     <label id='boardlabel2'>제목 &nbsp; </label> <input type="text" name='b_title'
                        class='form-control' id='title3' value="${vo.b_title}">
                  </div>
               </div>
               <div class='form-inline' style="margin-left: 100px">
                  <!-- 파일 첨부 선택칸 -->
                  <div>
                     <div class='filelabel'>
                        <label id='boardlabel2'>사진 첨부&nbsp;</label>
                     </div>
                     <div class='labelinline3'></div>
                     <div class='labelinline3'>
                        <!-- 라벨과 테이블 inline -->
                        <table
                           style="margin-bottom: -20px; margin-left: 45px; display: inline-block;">
                           <tr style="padding-left: 100px">
                 		<!-- 사진은 최대 3장까지 가능 -->
                              <td>
                              	<input type='file' accept=" image/*" class='photo' id='b_photo1' name='b_photo1'/>
                              	<input type='file' accept=" image/*" class='photo' id='b_photo2' name='b_photo2'/>
                              	<input type='file' accept=" image/*" class='photo' id='b_photo3' name='b_photo3'/>
                              </td>
                           </tr>
                        </table>
                     </div>
                    
                     <div id='imgs'>
                     <c:if test="${not empty vo.b_photo1name }">
                     <img src="/EyeMOM/resources/img/${vo.b_photo1name}" class="miri">
                     </c:if>
                     <c:if test="${not empty vo.b_photo2name }">
                     <img src="/EyeMOM/resources/img/${vo.b_photo2name}" class="miri">
                     </c:if>
                     <c:if test="${not empty vo.b_photo3name }">
                     <img src="/EyeMOM/resources/img/${vo.b_photo3name}" class="miri">
                     </c:if>
                     <input type="button" id='delete' value="사진 삭제"/>
                      <!-- 8888888888888888888사진이 보여질 공간 -->
                     
                     </div>
                  </div>
               </div>
                  <!-- 내용입력칸 -->
               <div class='texta3'>
                  <textarea class='textaa3' id='content'  name='b_content' >${vo.b_content}</textarea>
                  <img alt="" src="">
               </div>
               <div style='margin-left: 570px'>
                  <table>
                     <tr>  
                        <td>
					<!-- 등록하기 버튼 -->
                           <div>
                              <i class='fa fa-check-circle'><span><input
                                    type='submit' value='수정하기' class='btn btn-link' id='btn'></input></span></i>
                           </div>
                        </td>
                        <!-- 버튼사이 공간 css -->
                        <td><div class='space3'></div></td>
                        <td>
                        <!-- 취소하기 버튼 -->
                           <div>
                              <i class='fa fa-trash'><span><input type='button'
                                    value='취소하기' class='btn btn-link' id='cancel' /></span></i>
                           </div>
                        </td>
                     </tr>
                  </table>
               </div>
            </div>
         </form>
      </div>
   </section>
</div>
</body>
</html>