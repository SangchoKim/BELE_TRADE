<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!--슬라이드 쇼, 바로가기 버튼   -->
<div class="col-md-8">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="2" class="active"></li>
		</ol>

		<div class="carousel-inner" style="margin-top: 50px";>
			<div class="item active">
				<img alt="Promotion1" src="/resources/img/5rounds.PNG"
					width="500" height="150" class="img-responsive center-block">
			</div>

			<div class="item">
				<img alt="Promotion2" src="/resources/img/4rounds.PNG" width="500"
					height="150" class="img-responsive center-block">
			</div>

			<div class="item">
				<img alt="Promotion3" src="/resources/img/3rounds.PNG" width="500"
					height="150" class="img-responsive center-block">
			</div>
		</div>

		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div class="col-md-2">
		<!-- 바로가기 버튼? -->
	</div>


</div>