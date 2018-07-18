<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body >
	<div class="container" >
	<jsp:include page="../include/header.jsp"></jsp:include>
		<div class="row">	
				<div class="col-md-4 col-md-offset-4" >
					<c:if test="${store_seq.just eq 1}">
					<h3 class="text-primary text-center" style="margin-bottom: 50px;">#Store</h3>
					</c:if>
					<c:if test="${store_seq.just eq 2}">
					<h3 class="text-primary text-center" style="margin-bottom: 50px;">#Cloth</h3>
					</c:if>
					<c:if test="${store_seq.just eq 3}">
					<h3 class="text-primary text-center" style="margin-bottom: 50px;">#Shose</h3>
					</c:if>
					<c:if test="${store_seq.just eq 4}">
					<h3 class="text-primary text-center" style="margin-bottom: 50px;">#Cosmetic</h3>
					</c:if>
					<c:if test="${store_seq.just eq 5}">
					<h3 class="text-primary text-center" style="margin-bottom: 50px;">#Snack</h3>
					</c:if>
					<c:if test="${store_seq.just eq 6}">
					<h3 class="text-primary text-center" style="margin-bottom: 50px;">#Etc</h3>
					</c:if>
					<div class="from-group">
						<label for="name" style="margin-bottom: 10px;">Name</label>
						<ul class="list-group">
							<li class="list-group-item">${store_seq.name}</li>
						</ul>
					</div>
					<c:if test="${store_seq.just eq 2 || store_seq.just eq 3 || store_seq.just eq 4 || store_seq.just eq 5 || store_seq.just eq 6}">
						<div class="from-group">
							<label for="brand" style="margin-bottom: 10px;">Brand</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.brand}</li>
							</ul>
						</div>
					</c:if>		
					<div class="from-group">
						<label for="category" style="margin-bottom: 10px;">Category</label>
						<ul class="list-group">
							<li class="list-group-item">${store_seq.category}</li>
						</ul>
					</div>
					<c:if test="${store_seq.just eq 1}">
						<div class="from-group">
							<label for="address" style="margin-bottom: 10px;">Address</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.adress}</li>
							</ul>
						</div>
						<div class="from-group">
							<label for="tel" style="margin-bottom: 10px;">Tel</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.tel_no}</li>
							</ul>
						</div>
					</c:if>
					<c:if test="${store_seq.just eq 2 || store_seq.just eq 3}">
						<div class="from-group">
							<label for="size" style="margin-bottom: 10px;">Size</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.size}</li>
							</ul>
						</div>
						<div class="from-group">
							<label for="color" style="margin-bottom: 10px;">Color</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.color}</li>
							</ul>
						</div>
						<div class="from-group">
							<label for="price" style="margin-bottom: 10px;">Price</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.price}</li>
							</ul>
						</div>
					</c:if>
					<c:if test="${store_seq.just eq 4}">
						<div class="from-group">
							<label for="color" style="margin-bottom: 10px;">Color</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.color}</li>
							</ul>
						</div>
						<div class="from-group">
							<label for="price" style="margin-bottom: 10px;">Price</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.price}</li>
							</ul>
						</div>
					</c:if>
					<c:if test="${store_seq.just eq 5 || store_seq.just eq 6}">
						<div class="from-group">
							<label for="price" style="margin-bottom: 10px;">Price</label>
							<ul class="list-group">
								<li class="list-group-item">${store_seq.price}</li>
							</ul>
						</div>
					</c:if>							
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4" >
					<div class="text-center">
						<button class="btn btn-default" type="button" onclick="ok();">Ok</button>
					</div>
				</div>	
			</div>					
	</div>
	
	<script>
		function ok(){
			document.location.href = "/board/storeshow?just="+${store_seq.just};		
		}
	</script>
</body>
</html>