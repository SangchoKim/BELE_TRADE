<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style type="text/css">
	h3 {
	margin-bottom: 10%;
	}
	
	</style>
</head>
<body>
	
		<jsp:include page="../include/header.jsp"></jsp:include>
		<jsp:include page="../include/leftside.jsp"></jsp:include>
		<div class="row">
			<div class="col-md-4 col-md-offset-2">
				<h3 class="text-primary text-center"># Modification</h3>
				<form action="/mypage/update" method="post" id="form">
				<table class="table table-bordered">
					<c:forEach var="result" items="${result}">	
						<tr>
							<th>Following Password</th>
							<td><input type="password" name="password" id="pw1" placeholder="Jet down password you want to change" size="33"></td>
						</tr>						
						<tr>
							<th>Repeat Password</th>
							<td><input type="password" id="pw2" placeholder="Repeat jet down the password" size="33"></td>
						</tr>
						<tr>
							<th>E-mail</th>
							<td><input type="text" name="mail" value="${result.mail}" size="33"></td>
						</tr>
						<tr>
							<th>Tel</th>
							<td><input type="text" name="phone_no" value="${result.phone_no}" size="33"></td>
						</tr>
					</c:forEach>								
				</table>
				
				<div class="control text-center">
					<a href="/mypage/view" class="btn btn-default">Previous</a>			
					<button type="button" class="btn btn-success" id="modification">Modification</button>
				</div>		
				</form>	
			</div>
		</div>
		
		<jsp:include page="../include/footer.jsp"></jsp:include>
		
	<script type="text/javascript">
		$('#modification').on('click', function(event){
			if($('#pw1').val() == $('#pw2').val()){
				$('#form').submit();	
			}else(
				alert("Please, check the password ")
			)
		})
	</script>
</body>
</html>