<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
	<jsp:include page="./include/head.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
	<jsp:include page="./include/header.jsp"></jsp:include>
			
		<div class="row">
			<jsp:include page="./include/leftside.jsp"></jsp:include>
			<jsp:include page="./include/main.jsp"></jsp:include>		
		</div>				
	</div>
		<jsp:include page="./include/footer.jsp"></jsp:include>			
</body>
</html>
