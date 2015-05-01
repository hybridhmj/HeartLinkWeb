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
		
		$scope.loginsubmit = function() {
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

<style type="text/css">

.footer {
  position: fixed;
  bottom: 0;
  left: 0;
  height: 70px;
  background-color: white;
  width: 100%;
}

</style>



</head>


<body data-ng-controller="loginController">


<header class="container">

	<ul class="nav nav-tabs">
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">공지사항</a></li>
    <li><a href="#">QA</a></li>
    <li><a href="#">광고문의사항</a></li>
 	 </ul>
</header>

<section id="loginform" class="container">
	
	
	<div data-ng-show="loginck.logincheck=='false'">
	 <form name="loginForm" data-ng-submit="loginsubmit()" role="form" method="post">
	  <div class="form-group">
	    <label for="id">ID:</label>
	    <input type="text" class="form-control" id="id" name="id" data-ng-model="id" data-ng-dirty="true" data-ng-required="true">
	   <span style="color:red;" data-ng-show="loginForm.id.$error.required==loginForm.id.$dirty">필수 정보입니다.</span>
	  </div>
	  <div class="form-group">
	    <label for="password">Password:</label>
	    <input type="password" class="form-control" id="password" name="password" data-ng-model="password" data-ng-dirty="true" data-ng-required="true" data-ng-pattern="/^.{4,12}$/" maxlength="15">
	  	<span style="color:red;" data-ng-show="loginForm.password.$error.required==loginForm.password.$dirty">필수 정보입니다.</span>
	  	<span style="color:red;" data-ng-show="loginForm.password.$error.pattern">비밀번호를 4~12자리로 입력해주세요.</span>
	  </div>
	  
	  <button id="loginbtn" type="submit" class="btn btn-default" data-ng-disabled="loginForm.$invalid">로그인</button>
	</form>
	</div>
<!-- 	http://www.w3schools.com/tags/att_input_pattern.asp  패턴 공부-->
	
	
	
	
	
	
	
<!-- 회원가입	 -->
	<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" data-ng-show="loginck.logincheck=='false'">
  회원가입
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">마음맺기 가입</h4>
      </div>
      <div class="modal-body">
    	 <form data-ng-submit="loginsubmit()" role="form" method="post">
	  <div class="form-group">
	    <label for="id"></label>
	    <input type="text" class="form-control" id="id" name="id" placeholder="아이디">
	  </div>
	  <div class="form-group">
	    <label for="password"></label>
	    <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
	  </div>
	  <div class="form-group">
	    <label for="password"></label>
	    <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호 재확인">
	  </div>
		</form>
    
    
    
      </div>
      <div class="modal-footer" style="position: fixed" >
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">가입하기</button>
      </div>
    </div>
  </div>
</div>








	
	<div id="qqq" data-ng-show="loginck.logincheck=='true'">
		<a href="logout" class="btn btn-default">로그아웃</a>

	</div>
	
	<a href="#" class="btn btn-primary" data-ng-show="loginck.logincheck=='true'">마음맺기하러가장~</a>
	<a href="#" class="btn btn-primary">체험하기</a>
	
</section>

<footer id="bottom" class="container footer" >
	By@중앙주식회사 phone:010-xxx-xxxx
	<p id="kk">sdsd</p>
</footer>





</body>
</html>