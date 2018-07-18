<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./include/head.jsp"></jsp:include>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
		<c:if test="${empty sessionScope.result.id }">	
			<div class="col-md-3 col-md-offset-9">
				<button type="button" id="login" class="btn btn btn-default btn-sm"
					data-toggle="modal" data-target="#myModal_1"
					style="margin-top: 20px;">Login</button>
				<button type="button" id="signup" class="btn btn-default btn-sm"
					data-toggle="modal" data-target="#myModal"
					style="margin-top: 20px;">Signup</button>			
			</div>
			</c:if>
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
								<div class="text-left">
									<a href="/members/serchidform" class="text-primary">Search Id</a><br> <a
										href="/members/serchpwform" class="text-primary">Search Password</a>
								</div>
								<button type="submit" id="checkbtn" class="btn btn-default">Login</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="myModal" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h3 class="modal-title">Sign up</h3>
						</div>
						<form action="/members/add_signup" method="post">
							<div class="modal-body">
								<div class="form-group">
									<label for="id">ID</label><br> <input type="text"
										placeholder="Enter ID" id="id1" name="id" class="form-control"><br>																											
										<div id="check" class="text-danger"></div>										
									<button type="button" class="btn btn-danger" id="checkId">Check Id</button>
								</div>
								<div class="form-group">
									<label for="password">Password</label><br> <input
										type="password" placeholder="Enter Password" name="password" id="checkpw" value=""
										class="form-control"><br>
								</div>
								<div class="form-group">
									<label for="password_repeat">Repeat Password</label><br> <input
										type="password" placeholder="Repeat Password"
										name="password_repeat" id="repeatpw" value="" class="form-control"><br>
										<div id="confirm" class="text-danger"></div>	
								</div>
								<div class="form-group">
									<label for="name">Name</label><br> <input type="text"
										placeholder="Enter the name" name="name" class="form-control"><br>
								</div>
								<div class="form-group">
									<label for="name">E-mail</label><br> <input type="text"
										placeholder="Enter the e-mail" name="mail" class="form-control"><br>
								</div>
								<div class="form-group">
									<label for="number">Tel</label><br> <input type="text"
										placeholder="Enter the Tel" name="phone_no"
										class="form-control"><br>
								</div>
								<div class="form-group">
									<label for="birtday">Birthday</label><br>
									<select name="birthdate">
										<option value="">choose</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
									</select>
									<strong>Day</strong>
									<select name="birthmonth">
										<option value="">choose</option><option value="01">1</option><option value="02">2</option><option value="03">3</option><option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option><option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
									</select>
									<strong>Month</strong>
									<select name="birthyear">
										<option value="">choose</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option>
									</select>
									<strong>Year</strong>
								</div>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-default">Sign up</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Cancel</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="./include/header.jsp"></jsp:include>
		<div class="row">
			<jsp:include page="./include/leftside.jsp"></jsp:include>
			<jsp:include page="./include/main.jsp"></jsp:include>	
		</div>
	</div>
	<jsp:include page="./include/footer.jsp"></jsp:include>		
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
				
				
				$('#checkId').on('click', function() {
					$.ajax({
						type : "GET",
						url : '/members/signup_checked',
						data : {
							"id" : $('#id1').val()
						},
						dataType : "json"

					}).done(function(data) {
						if (data == "0") {
							$('#check').html('<p> Available </p>');
						} else {
							$('#check').html('<p> Used </p>');
						}
					});
				});
				
				$('#checkpw').change(function(event){
					if($('#checkpw').val() != $('#repeatpw').val()){
						$('#confirm').html('<p> Disaccord </p>');
						isMatched = false;
					}	
				})
				
				$('#checkpw').change(function(event){
					if($('#checkpw').val() == $('#repeatpw').val()){
						$('#confirm').html('<p> Accordance </p>');
						isMatched = false;
					}	
				})
				
				$('#repeatpw').change(function(event){
					if($('#repeatpw').val() != $('#checkpw').val()){
						$('#confirm').html('<p> Disaccord </p>');
						isMatched = false;
					}	
				})
				
				$('#repeatpw').change(function(event){
					if($('#repeatpw').val() == $('#checkpw').val()){
						$('#confirm').html('<p> Accordance </p>');
						isMatched = false;
					}	
				})
								   			
			</script>






</body>
</html>
