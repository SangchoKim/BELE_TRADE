<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!-- After login 마이페이지, 로고  -->
<c:if test="${!empty sessionScope.result.id }">
<div class="row">			
			<div class="col-md-3 col-md-offset-9">
				<div class="col-md-5" >
					<p class="text-primary" style="margin-top: 30px;">Hello, ${sessionScope.result.name}</p>
				</div>
				<div class="col-md-6" >
					<div class="dropdown">
						<button type="button" id="mypage" class="btn btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="margin-top: 20px;">Mypage
							<span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li><a href="/mypage/view">My page</a></li>
								<li><a href="/members/logout">logout</a>
							</ul>
					</div>
				</div>
			</div>		
		</div>
	</c:if>
			
		<div class="row">
			<div class="col-md-12">
				<a href="/"><img alt="Belle-log" src="/resources/img/Belle-logo.jpg" width="150" height="150" class="img-responsive center-block" style="margin-top: 50px" ></a>
				<h1 class="text-center" >Belle</h1>
				<p class="text-center">Stock-management</p>
			</div>
		</div>