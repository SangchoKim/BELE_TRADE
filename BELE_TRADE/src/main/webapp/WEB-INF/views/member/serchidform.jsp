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
	<form action="/members/serchid" method="post" id="form">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3 class="text-primary text-center"># Search ID</h3>
				<h4 class="text-danger text-center">You should write down either <strong>E-mail</strong> or <strong>Phone_No</strong></h4>
			</div>	
		</div>
		<div class="row title">
			<div class="col-md-4 col-md-offset-2">
				<table class="table table-bordered" id="section">
					<tr>
						<th>E-mail</th>
						<td><input type="text" name="mail" id="mail" placeholder="Jet down your email" size="33"></td>
					</tr>
				</table>							
			</div>			
			<div class="col-md-4">
				<table class="table table-bordered">				
					<tr>
						<th>Phone_No</th>
						<td><input type="text" name="phone_no" id="phone" placeholder="jet down your Phone_No without (-)" size="33"></td>
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
				if($('#mail').val() == '' && $('#phone').val() == ''){
					alert('Please, Type down')
					event.preventDefault();	
				}
			})		
		</script>
</body>
</html>