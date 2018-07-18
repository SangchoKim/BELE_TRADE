<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<style type="text/css">
.from-group {
	margin-bottom: 10%;
}

#title {
	margin: 6%;
}

.out {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.in {
	background-color: #fefefe;
	margin: 20vh auto;
	padding: 2rem;
	border: 1px solid #888;
	width: 30%;
}
</style>
</head>
<body>

	<jsp:include page="../include/header.jsp"></jsp:include>
	<jsp:include page="../include/leftside.jsp"></jsp:include>
	<div class="row">
		<div class="col-md-2 col-md-offset-3">
			<c:forEach var="result" items="${result}">
				<h3 class="text-primary text-center" id="title">${result.name}'s
					Page</h3>
			</c:forEach>
			<div class="from-group">
				<label for="id" class="text-info">ID</label>
				<c:forEach var="result" items="${result}">
					<ul class="list-group">
						<li class="list-group-item">${result.id}</li>
					</ul>
				</c:forEach>
			</div>
			<div class="from-group">
				<label for="name" class="text-info">Name</label>
				<c:forEach var="result" items="${result}">
					<ul class="list-group">
						<li class="list-group-item">${result.name}</li>
					</ul>
				</c:forEach>
			</div>
			<div class="from-group">
				<label for="email" class="text-info">E-mail</label>
				<c:forEach var="result" items="${result}">
					<ul class="list-group">
						<li class="list-group-item">${result.mail}</li>
					</ul>
				</c:forEach>
			</div>
			<div class="from-group">
				<label for="phone_no" class="text-info">Tel</label>
				<c:forEach var="result" items="${result}">
					<ul class="list-group">
						<li class="list-group-item">${result.phone_no}</li>
					</ul>
				</c:forEach>
			</div>
			<div class="from-group">
				<label for="birthday" class="text-info">birthday</label>
				<c:forEach var="result" items="${result}">
					<ul class="list-group">
						<li class="list-group-item">${result.birth}</li>
					</ul>
				</c:forEach>
			</div>
			<div class="from-group">
				<label for="reg_date" class="text-info">reg_date</label>
				<c:forEach var="result" items="${result}">
					<ul class="list-group">
						<li class="list-group-item">${result.reg_date}</li>
					</ul>
				</c:forEach>
			</div>
			<div class="control text-center">
				<input class="btn btn-success" type="button" value="Modify"
					onClick="updateuser();"> <input class="btn btn-default"
					type="button" value="Delete" onClick="deleteuser();">
			</div>
		</div>
	</div>
	<!-- 모달 -->
	<div id="popup" class="out">
		<div class="in">
			<div class="modal-info">
				<h3>Checking the password</h3>
			</div>
			<div>
				<p>
					We must check your password for security. <br>Please, jet down the <strong>Password</strong>.
				</p>
			</div>

			<form id="form">
				<c:forEach var="result" items="${result}">
					<input type="hidden" name="id" value="${result.id}">
				</c:forEach>
				<div class="form-group">
					<input class="form-control" type="password" name="authpw"
						placeholder=" Please, jet down the password" required>
				</div>
				<div class="form-group">
					<input type="submit" value="check"
						class="btn btn-primary btn-block">
				</div>
			</form>

			<div>
				<button class="btn btn-default btn-block" onclick="close_pop();">Close</button>
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>

<script type="text/javascript">
	function close_pop(event) {
		$('#popup').hide();
	};

	function updateuser(event) {
		$('#popup').show();
		var form = $('#form');
		form.attr('action', '/mypage/auth_up');
		form.attr('method', 'post');
	};

	function deleteuser(event) {
		$('#popup').show();
		var form = $('#form');
		form.attr('action', '/mypage/auth_de');
		form.attr('method', 'post');
	};
</script>
</html>