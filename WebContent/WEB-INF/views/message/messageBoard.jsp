<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="./resources/css/jquery-1.8.2.min.js.다운로드"></script>
    <!-- Bootstrap core CSS -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
<!--     <link href="./resources/css/dashboard.css" rel="stylesheet"> -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
<input type="button" value="삭제" class="btn btn-warning btn-sm" style="margin: 5 5 5 5; text-align: right">
<input type="button" value="읽음" class="btn btn-success btn-sm" style="margin: 5 5 5 5; text-align: right">
          <div class="table-responsive" >
            <table class="table table-striped table-hover">

                <tr > 
                  <th style="text-align:center; width: 5%" valign="top" >
     <input type="checkbox" id="ex_chk">
                  </th>
                  <th style="text-align:left; width: 20%">보낸 사람</th>
                  <th style="text-align:left; width: 45%;" >제목</th>
                  <th style="text-align:left; width: 15%">작성일</th>
					<th style="text-align:left; width: 15%">삭제</th>
                </tr>
                
           <tbody class="table-striped table-hover">
				<c:forEach var='vo' items="${sendList}">
                <tr> 
                  <th style="text-align:center; width: 5%" valign="top" >
     			<input type="checkbox" id="ex_chk">
                  </th>
                  <th style="text-align:left; width: 20%">${vo.s_nick }</th>
                  <th style="text-align:left; width: 45%;" >${vo.s_title }</th>
                  <th style="text-align:left; width: 15%">${vo.s_date }</th>
					<th style="text-align:left; width: 15%">삭제</th>
                </tr>

		</c:forEach>
</tbody>
            </table>
          </div>
          
<!--           첫번째 텝매뉴 내용이 끝나는 div -->
          </div>
          
<div class="tab-pane" id="tab2" style="text-align: right">
<input type="button" value="삭제" class="btn btn-warning btn-sm" style="margin: 5 5 5 5; text-align: right">
<input type="button" value="읽음" class="btn btn-success btn-sm" style="margin: 5 5 5 5; text-align: right">
   
          <div class="table-responsive">
            <table class="table table-striped table-hover">


                <tr > 
                  <th style="text-align:center; width: 5%" valign="top" >
     <input type="checkbox" id="ex_chk">
                  </th>
                  <th style="text-align:left; width: 20%">받는 사람</th>
                  <th style="text-align:left; width: 45%;" >제목</th>
                  <th style="text-align:left; width: 15%">작성일</th>
					<th style="text-align:left; width: 15%">상태</th>
                </tr>
       <tbody class="table-striped table-hover">
				<c:forEach var='vo' items="${receiveList}">
                <tr > 
                  <th style="text-align:center; width: 5%" valign="top" >
     <input type="checkbox" id="ex_chk">
                  </th>
                  <th style="text-align:left; width: 20%">${vo.s_send_nick }</th>
                  <th style="text-align:left; width: 45%;" >${vo.s_title }</th>
                  <th style="text-align:left; width: 15%">${vo.s_date }</th>
					<th style="text-align:left; width: 15%">${vo.s_state }</th>
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