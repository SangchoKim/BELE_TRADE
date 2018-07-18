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
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h3 class="text-primary text-center"># Search ID</h3>
				<h4 class="text-danger text-center">This is the result of ID </h4>
			</div>	
		</div>
		<div class="row title">
			<div class="col-md-4 col-md-offset-4">
				<c:forEach var="result" items="${result}">
				<table class="table table-bordered" id="section">
					<tr>
						<th><strong>ID</strong></th>
						<td><p>${result.id}<p></td>
					</tr>
					<tr>
						<th><strong>Name</strong></th>
						<td><p>${result.name}<p></td>
					</tr>
				</table>
				</c:forEach>							
			</div>			
		</div>		
		<div class="row">
			<div class="col-md-4 col-md-offset-4">							
				<div class="control text-center">
					<button type="button" id="login" class="btn btn btn-default"
					data-toggle="modal" data-target="#myModal_1">Login</button>					
					<a href="/members/serchpwform" class="btn btn-default">Search PW</a>			
				</div>				
			</div>		
		</div>
		<div id="myModal_1" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title">Log in</h3>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="Id">ID</label><br> <input type="text"
									id="id" placeholder="Enter ID" name="id"
									class="form-control"><br>
							</div>
							<div class="form-group">
								<label for="Password">Password</label><br> <input
									type="password" id="password" placeholder="Enter Password"
									name="password" class="form-control"><br>
							</div>
							<div id="fail" class="text-danger"></div>
							<div class="modal-footer">
								<button type="submit" id="checkbtn" class="btn btn-default">Login</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</div>			
		<jsp:include page="../include/footer.jsp"></jsp:include>
		<script>
				$('#checkbtn').on('click', function() {
					$.ajax({
						type : "GET",
						url : '/members/login_checked',
						data : {
							"id" : $('#id').val(),
							"password" : $('#password').val()
						},
						dataType : "json"

					}).done(function(data) {
						if (data == null || data == "") {
							$('#fail').html('<p> please, check again </p>');
						} else {
							document.location.href = "/members/login";
						}
					});
				});
		</script>
</body>
</html>