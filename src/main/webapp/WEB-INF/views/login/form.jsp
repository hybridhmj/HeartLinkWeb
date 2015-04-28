<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

    
    
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<%@ include file="/WEB-INF/common.jspf" %>

<title>login.jsp</title>

<script type="text/javascript">

	var app = angular.module("myApp",[]);
	app.controller("loginController", function($scope) {
		$scope.loginck = {
				logincheck : "false"
		};
		
		$scope.loginsubmit = function(xxxx) {
			$.ajax({
				type: "POST",
				url: "form",
				data: {
					id : $('#loginform #id').val(), 
					password : $('#loginform #password').val()
				},
				success : function(result, status) {
					alert(status + " " + JSON.stringify(result));
					$scope.loginck= result;
					$scope.$apply();
					alert("xxx= " + $scope.loginck.logincheck);
					if (result.status == true) {

						alert("emp 추가 성공...");
						var msg = result.login.name;
						$('#bottom #kk').html(msg);
						
					}else {
						alert("emp 추가 실패...")
					}
				},
				error : function(xhr, status) {
					alert(status);
				}
				
			});

			
		};

	

	});



</script>



</head>


<body data-ng-controller="loginController">


<header class="container">
<%-- 	<c:if test="${not empty userinfo.id}"> --%>
<!-- 		<a href="#" role="button">여기있네</a> -->
<!-- 		<a href="logout">logout</a> -->
<%-- 	</c:if> --%>

	<ul class="nav nav-tabs">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">공지사항</a></li>
    <li><a href="#">QA</a></li>
    <li><a href="#">광고문의사항</a></li>
 	 </ul>
</header>

<section id="loginform" class="container">
	
	
	<div data-ng-show="loginck.logincheck=='false'">
	 <form data-ng-submit="loginsubmit()" role="form" method="post">
	  <div class="form-group">
	    <label for="id">ID:</label>
	    <input type="text" class="form-control" id="id" name="id" value="koreadang">
	  </div>
	  <div class="form-group">
	    <label for="password">Password:</label>
	    <input type="password" class="form-control" id="password" name="password" value="1234">
	  </div>
	  
	  <button id="loginbtn" type="submit" class="btn btn-default">로그인</button>
	</form>
	</div>
	
	<div id="qqq" data-ng-show="loginck.logincheck=='true'">
	<h1 id="sss">xxx성공xxx</h1>
	</div>
	
	
	<a href="#" class="btn-primary">체험하기</a>
	
</section>

<footer id="bottom" class="container">
	By@중앙주식회사 phone:010-xxx-xxxx
	<p id="kk">sdsd</p>
</footer>





</body>
</html>