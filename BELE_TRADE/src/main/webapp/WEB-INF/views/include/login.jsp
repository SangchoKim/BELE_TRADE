<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<div class="row">			
			<div class="col-md-10 col-md-offset-10">
				<div class="col-md-1" >
					<p class="text-primary" style="margin-top: 30px;">Hello, ${sessionScope.result.name}</p>
				</div>
				<div class="col-md-1" >
					<div class="dropdown">
						<button type="button" id="mypage" class="btn btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" style="margin-top: 20px;">Mypage
							<span class="caret"></span></button>
							<ul class="dropdown-menu">
								<li><a href="#">link 1</a></li>
								<li><a href="#">link 2</a></li>
								<li><a href="/members/logout">logout</a>
							</ul>
					</div>
				</div>
			</div>		
		</div>