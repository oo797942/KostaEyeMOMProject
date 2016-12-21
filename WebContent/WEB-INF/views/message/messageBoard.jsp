<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="./resources/css/jquery-1.8.2.min.js.다운로드"></sc.ㅣript>
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
<!--     <link href="./resources/css/dashboard.css" rel="stylesheet"> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
function allChk(obj){
    var chkObj = $(".RowCheck");
    var rowCnt = chkObj.length - 1;
    var check = obj.checked;
    if (check) {﻿
        for (var i=0; i<=rowCnt; i++){
         if(chkObj[i].type == "checkbox")
             chkObj[i].checked = true; 
         $("#readAll").attr("disabled",false);
         $("#deleteAll").attr("disabled",false);
        }
    } else {
        for (var i=0; i<=rowCnt; i++) {
         if(chkObj[i].type == "checkbox"){
             chkObj[i].checked = false; 
             $("#readAll").attr("disabled","disabled");
             $("#deleteAll").attr("disabled","disabled");
         }
        }
    }
} 
function chkDis(buru){
	if(buru.checked==false){
	    $("#readAll").attr("disabled","disabled");
        $("#deleteAll").attr("disabled","disabled");
    
	}else{
	     $("#readAll").attr("disabled",false);
         $("#deleteAll").attr("disabled",false);
	}
}

$(function(){

	
	$("#deleteAll").click(function(){
		
		$("#frm").attr("action","deleteAll.go");
		$("#frm").submit();
	});
	$("#readAll").click(function(){
		
		$("#frm").attr("action","readAll.go");
		$("#frm").submit();
	});
});
﻿
</script>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    .nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #f5f5f5;
    cursor: default;
    background-color: #ffa07a;
    border: 1px solid #ddd;
    border-bottom-color: transparent;
}
th{
border: 1px;
}
.table-responsive {
    width: 100%;
    margin-bottom: 15px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 2px solid #ddd;
}
    </style>
</head>
<body>
  <div class="body">
<div style="width:1200px">
<h3 style="margin-left: 5px"><b>메세지 함</b></h3>
<hr/>
          <ul class="nav nav-tabs" style="margin-top: 20px"><!--  nav/ nav-tab 클래스를 추가하면 탭스타일로 나타납니다.-->
<li class="active"><a href="#tab1" data-toggle="tab">받은 메세지</a></li>
<li><a href="#tab2" data-toggle="tab">보낸 메세지</a></li><!--탭메뉴를 사용하기위해 data-toggle=”tab”을 지정해줍니다.   -->
</ul>
<div class="tab-content"><!--  탭내용을 보여주는 곳에 ‘tab-content’ 클래스를걸어줍니다-->
<div class="tab-pane active" id= "tab1" style="text-align: right"><!-- nav-tab부분 링크부분과 탭내용을 보여줄 id를 맞춰줍니다-->
<form  method="post" id="frm">
<input type="button" value="삭제" id="deleteAll" class="btn btn-warning btn-sm" style="margin: 5 5 5 5; text-align: right" disabled="disabled">
<input type="button" value="읽음" id="readAll" class="btn btn-success btn-sm" style="margin: 5 5 5 5; text-align: right" disabled="disabled">
          <div class="table-responsive" >
            <table class="table table-striped table-hover">

                <tr > 
                  <th style="text-align:center; width: 5%" valign="top" >
     <input type="checkbox"onclick="allChk(this);" >
                  </th>
                  <th style="text-align:left; width: 20%">보낸 사람</th>
                  <th style="text-align:left; width: 45%;" >제목</th>
                  <th style="text-align:left; width: 15%">작성일</th>
					<th style="text-align:left; width: 15%">상태</th>
                </tr>
                
           <tbody class="table-striped table-hover">

							<c:forEach var="i" begin="1" end="${fn:length(sendList)}" step="1">
							<c:set var="vo" value="${sendList[i-1]}" />
                <tr> 
                  <th style="text-align:center; width: 5%" valign="top" >
                  <input type="hidden" name="list[${i}].s_send_id" value="${vo.s_send_id}">
                <input type="hidden" name="list[${i}].s_state" value="${vo.s_state}">
     			<input type="checkbox" id="ex_chk" name="list[${i}].s_no" onclick="chkDis(this)" class="RowCheck" value="${vo.s_no}">
                  </th>
                  <th style="text-align:left; width: 20%">${vo.s_nick }</th>
                  <th style="text-align:left; width: 45%;" >
                  	<a onclick="window.open('messageView.go?s_no=${vo.s_no}&s_state=${vo.s_state}&s_send_id=${vo.s_send_id}', '메세지',
                   				'width=600px,height=320');return false;">
                  ${vo.s_title }</a></th>
                  <th style="text-align:left; width: 15%">${vo.s_date }</th>
					<th style="text-align:left; width: 15%">
					                  					<c:if test="${vo.s_state=='n'}">
									안읽음
								</c:if>
								<c:if test="${vo.s_state=='y'}">
									읽음
								</c:if>
								</th>
                </tr>

		</c:forEach>
</tbody>
            </table>
          </div>
          </form>
<!--           첫번째 텝매뉴 내용이 끝나는 div -->
          </div>
          
<div class="tab-pane" id="tab2" style="text-align: right">
   
          <div class="table-responsive">
            <table class="table table-striped table-hover">


                <tr > 

                  <th style="text-align:left; width: 20%">받는 사람</th>
                  <th style="text-align:left; width: 45%;" >제목</th>
                  <th style="text-align:left; width: 15%">작성일</th>
					<th style="text-align:left; width: 15%">상태</th>
                </tr>
       <tbody class="table-striped table-hover">
				<c:forEach var='vo' items="${receiveList}">
    
                <tr > 

                  <th style="text-align:left; width: 20%">${vo.s_send_nick}</th>
                  <th style="text-align:left; width: 45%;" >
                                    	<a onclick="window.open('messageView.go?s_no=${vo.s_no}', '메세지',
                   				'width=600px,height=320');return false;">${vo.s_title}</a>
                   				</th>
                  <th style="text-align:left; width: 15%">${vo.s_date}</th>
					<th style="text-align:left; width: 15%">
					                  					<c:if test="${vo.s_state=='n'}">
									안읽음
								</c:if>
								<c:if test="${vo.s_state=='y'}">
									읽음
									</c:if>
</th>
                </tr>
     

</c:forEach>
</tbody>
            </table>
          </div>

</div>
</div>

</div>
</div>
</body>
</html>