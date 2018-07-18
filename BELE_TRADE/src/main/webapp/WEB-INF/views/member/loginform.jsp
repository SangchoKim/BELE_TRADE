<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/resources/js/jquery-2.1.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>관리자 페이지 로그인 </h2>
	<div>
		<form action="/login" method="post">
			<input type="text" id="id" name="id" placeholder="id" style="margin-bottom: 10px" ></input><br>
			<input type="password" id="pw" name="pw" placeholder="pw" style="margin-bottom: 10px"  ></input><br>			
			<input type="submit" value="로그인">
		</form>
			<input type="button" value="회원가입" id="signup">	
	</div>
	<script>
		$('#signup').on('click',function(){
			document.location.href = '/member/signup';			
		});
		
		
	
	</script>
</body>
</html>