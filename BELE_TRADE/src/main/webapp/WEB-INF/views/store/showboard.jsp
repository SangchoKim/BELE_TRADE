<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<jsp:include page="../include/header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="../include/leftside.jsp"></jsp:include>

			<div class="col-md-8">
					<c:if test="${store[0].just eq 1}">
						<h3 class="text-info" style="margin-top:10px;">#Store</h3>
					</c:if>
					<c:if test="${store[0].just eq 2}">
						<h3 class="text-info" style="margin-top:10px;">#Cloth</h3>
					</c:if>
					<c:if test="${store[0].just eq 3}">
						<h3 class="text-info" style="margin-top:10px;">#Shose</h3>
					</c:if>
					<c:if test="${store[0].just eq 4}">
						<h3 class="text-info" style="margin-top:10px;">#Cosmetic</h3>
					</c:if>
					<c:if test="${store[0].just eq 5}">
						<h3 class="text-info" style="margin-top:10px;">#Snack</h3>
					</c:if>
					<c:if test="${store[0].just eq 6}">
						<h3 class="text-info" style="margin-top:10px;">#Etc</h3>
					</c:if>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>No</th>
							<th>Name</th>
							<c:if test="${store[0].just eq 2 || store[0].just eq 3 || store[0].just eq 4 || store[0].just eq 5 || store[0].just eq 6}">
								<th>Brand</th>
							</c:if>
							<th>Category</th>
							<c:if test="${store[0].just eq 1}">
								<th>Address</th>
								<th>Tel</th>
							</c:if>
							<c:if test="${store[0].just eq 2 || store[0].just eq 3}">
								<th>Size</th>
								<th>Color</th>
								<th>Price</th>
							</c:if>
							<c:if test="${store[0].just eq 4}">
								<th>Color</th>
								<th>Price</th>
							</c:if>
							<c:if test="${store[0].just eq 5 || store[0].just eq 6}">
								<th>Price</th>
							</c:if>
							<th>Review</th>
						</tr>
					</thead>
					<c:if test="${!empty store }"></c:if>
					<c:forEach var="store" items="${store}" varStatus="status">
						<tbody>
							<tr>
								<%-- <td>${(total - status.index) - ((currentPageNo -1) * Maxpost)}</td> --%>
								<td>${status.count}</td>
								<td><a href="/board/showdetail?store_seq=${store.store_seq}&just=${store.just}">${store.name}</a></td>
								<c:if test="${store.just eq 2 || store.just eq 3 || store.just eq 4 || store.just eq 5 || store.just eq 6}">
									<td>${store.brand}</td>
								</c:if>
								<td>${store.category}</td>
								<c:if test="${store.just eq 1}">
									<td>${store.adress}</td>
									<td>${store.tel_no}</td>
								</c:if>
								<c:if test="${store.just eq 2 || store.just eq 3}">
									<td>${store.size}</td>
									<td>${store.color}</td>
									<td>${store.price}</td>
								</c:if>
								<c:if test="${store.just eq 4}">
									<td>${store.color}</td>
									<td>${store.price}</td>
								</c:if>
								<c:if test="${store.just eq 5 || store.just eq 6}">
									<td>${store.price}</td>
								</c:if>	
								<td style="text-align: center;" id="review">${store.review}</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
				<hr>
				<button type="button" id="write"
					class="btn btn btn-default pull-right" data-toggle="modal"
					data-target="#myModal_2">write</button>
				<div id="myModal_2" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<c:if test="${store[0].just eq 1}">
									<h3 class="modal-title">#Store</h3>
								</c:if>
								<c:if test="${store[0].just eq 2}">
									<h3 class="modal-title">#Cloth</h3>
								</c:if>
								<c:if test="${store[0].just eq 3}">
									<h3 class="modal-title">#Shose</h3>
								</c:if>
								<c:if test="${store[0].just eq 4}">
									<h3 class="modal-title">#Cosmetic</h3>
								</c:if>
								<c:if test="${store[0].just eq 5}">
									<h3 class="modal-title">#Snack</h3>
								</c:if>
								<c:if test="${store[0].just eq 6}">
									<h3 class="modal-title">#Etc</h3>
								</c:if>
							</div>
							<div class="modal-body">
								<form action="/board/addStore" method="post">
								<c:forEach var="store" items="${store}"> 
								<input type="hidden" name="just" value="${store.just}">
								</c:forEach>
								<div class="form-group">
									<label for="Name">Name </label> 
									<input type="text" class="form-control" name="name">
								</div>
								<c:if test="${store[0].just eq 2 || store[0].just eq 3 || store[0].just eq 4 || store[0].just eq 5 || store[0].just eq 6}">
								<div class="form-group">
									<label for="brand">Brand </label> 
									<input type="text" class="form-control" name="brand">
								</div>
								</c:if>
								<div class="form-group">
									<label for="Category">Category </label> 
									<input type="text" class="form-control" name="category">
								</div>
								<c:if test="${store[0].just eq 1}">
								<div class="Address">
									<label for="Address">Address</label> 
									<input type="text" class="form-control" name="adress">
								</div>
								<div class="form-group">
									<label for="Tel">Tel </label> 
									<input type="text" class="form-control" name="tel_no">
								</div>
								</c:if>
								<c:if test="${store[0].just eq 2 || store[0].just eq 3}">
								<div class="form-group">
									<label for="size">Size </label> 
									<input type="text" class="form-control" name="size">
								</div>
								<div class="form-group">
									<label for="color">color </label> 
									<input type="text" class="form-control" name="color">
								</div>
								<div class="form-group">
									<label for="price">price </label> 
									<input type="text" class="form-control" name="price">
								</div>
								</c:if>
								<c:if test="${store[0].just eq 4}">
								<div class="form-group">
									<label for="color">color </label> 
									<input type="text" class="form-control" name="color">
								</div>
								<div class="form-group">
									<label for="price">price </label> 
									<input type="text" class="form-control" name="price">
								</div>
								</c:if>
								<c:if test="${store[0].just eq 5 || store[0].just eq 6}">
								<div class="form-group">
									<label for="price">price </label> 
									<input type="text" class="form-control" name="price">
								</div>
								</c:if>
								<div class="modal-footer">
									<button type="submit" class="btn btn-default " >Submit</button>
									<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="input-group">
					 <form action="/board/store_search" name="search" method="post">
					 <c:forEach var="store" items="${store}"> 
					 <input type="hidden" name="just" value="${store.just}">
					 </c:forEach>
					 	<select name="keyField" size="1">
					 		<option value="name">Name</option>
					 		<c:if test="${store[0].just eq 2 || store[0].just eq 3 || store[0].just eq 4 || store[0].just eq 5 || store[0].just eq 6}">
					 			<option value="brand">Brand</option>
					 		</c:if>
					 		<option value="category">Category</option>
					 		<c:if test="${store[0].just eq 1}">
					 			<option value="adress">Address</option>
					 			<option value="tel_no">Tel</option>
					 		</c:if>
					 		<c:if test="${store[0].just eq 2 || store[0].just eq 3}">
					 			<option value="tel_no">Size</option>
					 			<option value="adress">Color</option>
					 			<option value="tel_no">Price</option>
					 		</c:if>
					 		<c:if test="${store[0].just eq 4}">
					 			<option value="adress">Color</option>
					 			<option value="tel_no">Price</option>
					 		</c:if>
					 		<c:if test="${store[0].just eq 5 || store[0].just eq 6}">
					 			<option value="tel_no">Price</option>
					 		</c:if>		
					 	</select>
					 		<input type="text" size="30" name="keyWord"  id="auto" value="">
					 		
					 		<input class="btn btn-default" type="button" value="Search" onclick="check()">
					 		<input type="hidden" name="page" value="0">
					 		
					 </form>	
				</div>
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${paging.currentPageNo gt 5}  ">
							<li><a href="javascript:goPage(${prevPageNo}, ${Maxpost})">previous</a></li>
						</c:if>
						<c:forEach var="i" begin="${startPageNo}" end="${endPageNo}" step="1">
							<c:choose>
								<c:when test="${i eq currentPageNo}">
									<li class="active"><a href="javascript:goPage(${i}, ${Maxpost})">${i}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="javascript:goPage(${i}, ${Maxpost})">${i}</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<fmt:parseNumber var="currentPage" integerOnly="true" value="${(currentPageNo-1)/5}"></fmt:parseNumber>
						<fmt:parseNumber var="finalPage" integerOnly="true" value="${(finalPageNo-1)/5}"></fmt:parseNumber>
						<c:if test="${currentPage < finalPage}">
							<li><a href="javascript:goPage(${nextPageNo}, ${Maxpost})">next</a></li>
						</c:if>
					</ul>
				</div>
				<script>
					function goPage(pages, lines){
						location.href ="?" + "pages=" + pages;
					};
					
					function check(){
						if(document.search.keyWord.value == ""){
							alert("Please, Type down")
							document.search.keyWord.focus();
							return;
						}
						document.search.submit();
					};
					
					
					/* 	$('#auto').autocomplete(function(event){
								$.ajax({
									type: 'post',
									url: "/board/autocomplete",
									dataType: "json",
									data:{ "value" : $('#auto').val()},
									success:function(data){
										$.map(data, function(item) {
			                                return {
			                                    label: item.data,
			                                    value: item.data
			                                }
			                            })				
									}
								});
							};
							 */
					
					
					
					/* $('#detail').on('click', function(){
						
						var value = 1;
						var store_seq = $('#store_seq').val();
						
						$.ajax({
							type : "GET"
							,url : "/board/review"
							,data : { 
								"review" : value,
								"store_seq" : store_seq
							},
							
							success : function(data){
								
								var jo = JSON.parse(data);

									console.log(jo.data);
									$('#review').html('<p> please, check again </p>'); 
								
							}					
						});					
					}); */
				</script>
				<div class="col-md-2">
					<!-- 바로가기 버튼? -->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>