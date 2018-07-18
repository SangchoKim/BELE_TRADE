<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<div class="col-md-2">
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="/board/storeshow?just=1">Store</a> <a href="/board/storeshow?just=2">Cloth</a> <a href="/board/storeshow?just=3">Shose</a>
		<a href="/board/storeshow?just=4">Cosmetic</a> <a href="/board/storeshow?just=5">Snack</a> <a href="/board/storeshow?just=6">Etc</a>
	</div>
	<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
</div>