<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<div class="container">
	<jsp:include page="../include/header.jsp"></jsp:include>
		<div class="row">
		<c:if test="${value ne 1 }">
			<div class="col-md-4 col-md-offset-4 ">
				<c:forEach var="result" items="${result}" >
				<c:if test="${result.just eq 1}">				
					<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Store</h3>
				</c:if>
				<c:if test="${result.just eq 2}">				
					<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Cloth</h3>
				</c:if>
				<c:if test="${result.just eq 3}">				
					<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Shose</h3>
				</c:if>
				<c:if test="${result.just eq 4}">				
					<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Cosmetic</h3>
				</c:if>
				<c:if test="${result.just eq 5}">				
					<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Snack</h3>
				</c:if>
				<c:if test="${result.just eq 6}">				
					<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Etc</h3>
				</c:if>
				</c:forEach>
					<div class="from-group">
						<label for="name" class="text-info" style="margin-bottom: 10px;">Name</label>
						<c:forEach var="result" items="${result}" >
						<ul class="list-group">
							<li class="list-group-item">${result.name}</li>
						</ul>
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3 || result.just eq 4 || result.just eq 5 || result.just eq 6}">
							<label for="brand" class="text-info" style="margin-bottom: 10px;">Brand</label>
								<ul class="list-group">
									<li class="list-group-item">${result.brand}</li>
								</ul>
							</c:if>
						</c:forEach>
					</div>
					<div class="from-group">
						<label for="category" class="text-info" style="margin-bottom: 10px;">Category</label>
						<c:forEach var="result" items="${result}" >
						<ul class="list-group">
							<li class="list-group-item">${result.category}</li>
						</ul>
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}" >
							<c:if test="${result.just eq 1}">	
							<label for="address" class="text-info" style="margin-bottom: 10px;">Address</label>
								<ul class="list-group">
									<li class="list-group-item">${result.adress}</li>
								</ul>
							</c:if>	
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 1}">
							<label for="tel" class="text-info" style="margin-bottom: 10px;">Tel</label>
								<ul class="list-group">
									<li class="list-group-item">${result.tel_no}</li>
								</ul>
							</c:if>
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3}">
							<label for="size" class="text-info" style="margin-bottom: 10px;">Size</label>
								<ul class="list-group">
									<li class="list-group-item">${result.size}</li>
								</ul>
							</c:if>
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3 || result.just eq 4}">
							<label for="color" class="text-info" style="margin-bottom: 10px;">Color</label>
								<ul class="list-group">
									<li class="list-group-item">${result.color}</li>
								</ul>
							</c:if>
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3 || result.just eq 4 || result.just eq 5 || result.just eq 6}">
							<label for="price" class="text-info" style="margin-bottom: 10px;">Price</label>
								<ul class="list-group">
									<li class="list-group-item">${result.price}</li>
								</ul>
							</c:if>
						</c:forEach>
					</div>
					<c:forEach var="result" items="${result}" >
					<a href="/board/storereview?store_seq=${result.store_seq}&just=${result.just}"><button class="btn btn-default" >Back</button></a>						
					<a href="/board/updateform?store_seq=${result.store_seq}&value=1&just=${result.just}"><button type="button" class="btn btn-default pull-right">Modify</button></a>
					</c:forEach>
					<button type="button" class="btn btn-default pull-right" onclick="del()">Delete</button>
			</div>
			</c:if>
			<script>
			function del(){
				console.log("1");
				var con = confirm('Are you sure to delete?');
				if(con === true){
					document.location.href = "/board/deletestore?store_seq="  + ${result[0].store_seq} + "&just=" + ${result[0].just}  ;
				}else{
					false;
				}	
			};
			</script>
			<c:if test="${value eq 1 }">
			<div class="row">
			<div class="col-md-4 col-md-offset-4 ">	
				<c:forEach var="result" items="${result}" >			
					<c:if test="${result.just eq 1}">				
						<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Store</h3>
					</c:if>
					<c:if test="${result.just eq 2}">				
						<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Cloth</h3>
					</c:if>
					<c:if test="${result.just eq 3}">				
						<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Shose</h3>
					</c:if>
					<c:if test="${result.just eq 4}">				
						<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Cosmetic</h3>
					</c:if>
					<c:if test="${result.just eq 5}">				
						<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Snack</h3>
					</c:if>
					<c:if test="${result.just eq 6}">				
						<h3 class="text-primary text-center" style="margin-bottom: 50px; margin-top: 50px;">#Etc</h3>
					</c:if>
				</c:forEach>
					<form action="/board/updatestore" method="post" name="handin">
					<c:forEach var="result" items="${result}"  >
					<input hidden="${result.store_seq}" name="store_seq" value="${result.store_seq}">
					<input hidden="${result.just}" name="just" value="${result.just}">
					</c:forEach>
					<div class="from-group">
						<label for="name" class="text-info" style="margin-bottom: 10px;">Name</label>
						<c:forEach var="result" items="${result}" >
							<input class="list-group-item" size="43px;" type="text" value="${result.name}" name="name">
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3 || result.just eq 4 || result.just eq 5 || result.just eq 6}">
							<label for="brand" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Brand</label>
								<input class="list-group-item" size="43px;" type="text" value="${result.brand}" name="brand">
							</c:if>
						</c:forEach>
					</div>
					<div class="from-group">
						<label for="category" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Category</label>
						<c:forEach var="result" items="${result}" >
							<input class="list-group-item" size="43px;" type="text" value="${result.category}" name="category">
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 1}">
							<label for="address" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Address</label>
								<input class="list-group-item" size="43px;" type="text" value="${result.adress}" name="adress">
							</c:if>	
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 1}">
							<label for="tel" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Tel</label>
								<input class="list-group-item" size="43px;" type="text" value="${result.tel_no}" name="tel_no">
							</c:if>	
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3}">
							<label for="size" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Size</label>
								<input class="list-group-item" size="43px;" type="text" value="${result.size}" name="size">
							</c:if>	
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3 || result.just eq 4}">
							<label for="color" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Color</label>
								<input class="list-group-item" size="43px;" type="text" value="${result.color}" name="color">
							</c:if>	
						</c:forEach>
					</div>
					<div class="from-group">
						<c:forEach var="result" items="${result}">
							<c:if test="${result.just eq 2 || result.just eq 3 || result.just eq 4 || result.just eq 5 || result.just eq 6}">
							<label for="price" class="text-info" style="margin-bottom: 10px; margin-top: 20px;">Price</label>
								<input class="list-group-item" size="43px;" type="text" value="${result.price}" name="price">
							</c:if>	
						</c:forEach>
					</div>
					</form>
				</div>
			</div>	
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="text-center" style="margin-top: 6%">	
						<button type="button" class="btn btn-default" onclick="check()">Modify</button>						
						<c:forEach var="result" items="${result}" >
						<a href="/board/storereview?store_seq=${result.store_seq}&just=${result.just}"><button class="btn btn-default text-center" >Back</button></a>
						</c:forEach>
					</div>
				</div>	
			</div>
			</c:if>	
		</div>
	</div>
		<script>
			function check(){
				var con = confirm('Are you sure to modify?');
				if(con ===true){
					document.handin.submit();
				}else{
					false;
				}	
			};
			
		</script>
	
</body>
</html>