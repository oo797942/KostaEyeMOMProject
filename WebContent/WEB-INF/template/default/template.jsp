<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
<!-- <link href="/EyeMOM/resources/css/header.css" rel="stylesheet"	type="text/css" /> -->
<!-- <link href="/EyeMOM/resources/css/footer.css" rel="stylesheet"	type="text/css" /> -->
<!-- <link rel="stylesheet" href="/EyeMOM/resources/css/popupStyle.css"> -->
<!-- 	<link rel='stylesheet' href='/EyeMOM/resources/css/loginStyle.css'> -->
<script type="text/javascript"
	src="/EyeMOM/resources/js/jquery-3.1.1.min.js"></script>
<script src="//code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js'></script>
<script type="text/javascript" src="/EyeMOM/resources/js/header.js"></script>
<style type="text/css">
* {
	margin: 0px auto;
}

.header {
	width: 1200px;
}

.body {
	width: 1200px;
}

.footer {
	width: 1200px;
	color: red;
	text-align: left;
}
</style>
</head>
<body>
	<div class="page">
		<tiles:insertAttribute name="header" />
		<div class="content">
			<tiles:insertAttribute name="body" />
		</div>
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>