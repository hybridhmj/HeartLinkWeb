<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<%@ include file="/WEB-INF/common.jspf" %>

<script type="text/javascript">
var app = angular.module("myApp", ["ngAnimate", "ngSanitize", "ngRoute"]);

app.config(function($routeProvider) {
   var loginform = {
         templateUrl : "login/form",
         controller : "empController"
         
   };
   
   var fail = {
         templateUrl : "login/fail",
         controller : "cityController"
         
   };
   
   $routeProvider.when('/loginform', loginform);
   $routeProvider.when('/fail', fail);
   $routeProvider.otherwise({redirectTo: '/main'});
   
   
});



app.controller("mainController", function($scope) {
	
	$scope.loginck = {
			logincheck : "false"
	};

	$scope.loginsubmit = function() {
		$.ajax({
			type: "POST",
			url: "login/form",
			data: {
				id : $('#mainheader #id').val(), 
				password : $('#mainheader #password').val()
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
	
	$scope.registersubmit = function() {
		$.ajax({
			type: "POST",
			url: "member/register",
			data: {
				id : $('#registerform #registerid').val(), 
				password : $('#registerform #registerpassword').val(), 
				age : $('#registerform #registerage').val(), 
				sex : $('#registerform #registersex').val(), 
				kakaoid : $('#registerform #registerkakaoid').val(), 
				area : $('#registerform #registerarea').val(), 
				nickname : $('#registerform #registernickname').val()

			},
			success : function(result, status) {
				alert(status + " " + JSON.stringify(result));
			},
			error : function(xhr, status) {
				alert(status);
			}
			
		});

	};
	
	


});

app.controller("empController", function($scope) {
   alert("empController");
//    $scope.message = "직원 리스트";
});

app.controller("cityController", function($scope) {
   alert("cityController");
//    $scope.message = "도시 리스트";
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




<title>main.jsp</title>


</head>
<body data-ng-controller="mainController">

<header id="mainheader">
	<nav class="navbar navbar-default">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header ">
	    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
     	 <span class="glyphicon glyphicon-log-in">Login</span> 

      </button>
	      <a class="navbar-brand" href="#"> <small>메인링크</small></a>
	       <a class="navbar-brand" href="#fail"><small>공지사항</small></a>
	        <a class="navbar-brand" href="#"><small>질문(Q&A)</small></a>
	    </div>

	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse navbar-right" id="myNavbar" >
	    	<div data-ng-show="loginck.logincheck=='false'">
			      <form name="loginForm" data-ng-submit="loginsubmit()" role="form" method="post" class="navbar-form form-inline">
					  <div class="form-group">
			    		<label for="id">ID:</label>
			   			<input type="text" class="form-control" id="id" name="id" data-ng-model="id" data-ng-dirty="true" data-ng-required="true">
			  		  </div>
			 		  <div class="form-group">
			    		<label for="password">Password:</label>
			   			<input type="password" class="form-control" id="password" name="password" data-ng-model="password" data-ng-dirty="true" data-ng-required="true" data-ng-pattern="/^.{4,12}$/" maxlength="15">
			 		  </div>
			 		  <button id="loginbtn" type="submit" class="btn btn-default" data-ng-disabled="loginForm.$invalid">로그인</button>
				</form>
			</div>
			<div data-ng-show="loginck.logincheck=='true'">
				<a href="login/logout" class="btn btn-default">로그아웃</a>
			</div>
			
			
			
			
<!-- 			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" data-ng-show="loginck.logincheck=='false'"> -->
<!--   회원가입 -->
<!-- </button> -->

<a data-toggle="modal" data-target="#myModal" data-ng-show="loginck.logincheck=='false'">회원가입</a>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">마음맺기 가입</h4>
      </div>
      
      <div class="modal-body">
    	 <form id="registerform" name="registerform" data-ng-submit="registersubmit()" role="form" method="post">
	 		  <div class="form-group">
			    <label for="registerid"></label>
			    <input type="text" class="form-control"  data-ng-model="registerid" id="registerid" name="registerid" placeholder="아이디">
	  		  </div>
			  <div class="form-group">
			    <label for="registerpassword"></label>
			    <input type="password" class="form-control" data-ng-model="registerpassword" id="registerpassword" name="registerpassword" placeholder="비밀번호">
			  </div>
			  <div class="form-group">
			    <label for="passwordck"></label>
			    <input type="password" class="form-control" id="registerpasswordck" placeholder="비밀번호 재확인">
			  </div>
			  <div class="form-group">
			    <label for="nickname"></label>
			    <input type="text" class="form-control" data-ng-model="registernickname" id="registernickname" name="nickname" placeholder="닉네임">
			  </div>
			  <div class="form-group">
			    <label for="age"></label>
			    <input type="number" class="form-control" data-ng-model="registerage" id="registerage" name="age" placeholder="나이">
			  </div>
			   <div class="form-group">
			    <label for="area">지역</label>
			    <select class="form-control" data-ng-model="registerarea" id="registerarea" name="area" >
				    <option>서울</option>
					<option>인천</option>
					<option>경기</option>
					<option>대구</option>
					<option>부산</option>
					<option>대전</option>
					<option>제주</option>
			    </select>
			   </div>
			    
			  <div class="form-group">
			    <label for="sex"></label>
			    <input type="text" class="form-control" data-ng-model="registersex" id="registersex" name="sex" placeholder="성별">
			  </div>
			  <div class="form-group">
			    <label for="kakaoid"></label>
			    <input type="text" class="form-control" data-ng-model="registerkakaoid" id="registerkakaoid" name="kakaoid" placeholder="카톡ID">
			  </div>
			  <button id="registerbtn" type="submit" class="btn btn-primary" >가입하기</button>
			  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</form>
      </div>  
    </div>
  </div>
</div>



	  	</div>
	</nav>
	
</header>





<section>
	<ng-view>
	
	</ng-view>

</section>

<footer id="bottom" class="container footer" >
	By@중앙주식회사 phone:010-xxx-xxxx
	<p id="kk">sdsd</p>
</footer>



</body>
</html>