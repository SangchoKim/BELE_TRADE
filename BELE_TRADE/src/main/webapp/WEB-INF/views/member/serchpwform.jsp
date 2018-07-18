<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style type="text/css">
		.title{
		margin-top: 3%;
		margin-bottom: 3%;
		}	
	</style>
</head>
<body>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<form action="/members/serchpw" method="post" id="form">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3 class="text-primary text-center"># Search PW</h3>
				<h4 class="text-danger text-center">You should write down <strong> ID </strong> and <strong> E-mail </strong></h4>
			</div>	
		</div>
		<div class="row title">
			<div class="col-md-4 col-md-offset-4">
				<table class="table table-bordered" id="section">
					<tr>
						<th>ID</th>
						<td><input type="text" name="id" id="id" placeholder="Jet down your ID" size="33"></td>
					</tr>
					<tr>
						<th>E-mail</th>
						<td><input type="text" name="mail" id="mail" placeholder="jet down your E-mail" size="33"></td>
					</tr>		
				</table>							
			</div>			
		</div>		
		<div class="row">
			<div class="col-md-4 col-md-offset-4">							
				<div class="control text-center">
					<a href="/" class="btn btn-default">Previous</a>			
					<button type="submit" class="btn btn-success">Search</button>
				</div>		
			</div>		
		</div>			
	</form>
		<jsp:include page="../include/footer.jsp"></jsp:include>
		<script type="text/javascript">
			$('#form').submit(function(event){
				if($('#id').val() == '' && $('#mail').val() == ''){
					alert('Please, Type down')
					event.preventDefault();	
				}
			})		
		</script>
</body>
</html>