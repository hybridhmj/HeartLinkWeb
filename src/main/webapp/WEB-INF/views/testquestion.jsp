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

var app = angular.module("myApp", ["ngAnimate", "ngSanitize", "ngRoute", "ngTouch"]);

app.controller("mainController", function($scope, $http, $location) {
	$scope.num=0;
	
	
	$scope.countp = function() {
		
		if($scope.num==4) {
			$scope.num = 0;
		}else {
			$scope.num = $scope.num + 1;
		}
// 		alert("countp");
	};
	
	
	$scope.countm = function() {
// 		alert("countm");
		if($scope.num==0) {
			$scope.num = 4;
		}else {
			$scope.num = $scope.num - 1;
		}
	};
	
	$scope.leftbtn = function() {
// 		alert("leftbtn");
		$scope.countm();
		
	};
	
	$scope.rightbtn = function() {
// 		alert("rigthbtn");
		$scope.countp();
	};
	
	$scope.question = function() {
		alert($scope.s1);
		alert($scope.s2);
		alert($scope.s3);
		alert($scope.s4);
		alert($scope.s5);
		
	};
	
	
	$http.get("q/question").success(function(loginstatus) {
	   $scope.que = loginstatus;
	   $scope.$apply();
	  }).error(function() {
	     alert("server error...");
	});

	
});

</script>

<style type="text/css">
	
	.resizable, img {
	 max-width: 1024px;
	 max-height: 800px;
	 width: 100% !important;
	 height: 100% !important;
	 }
	
	
}
	
</style>

<title>template.jsp</title>
</head>
<body data-ng-controller="mainController"
	  data-ng-swipe-left="countp()"
	  data-ng-swipe-right="countm()"      
>

<div class="row container-fluid">

  	<div class="col-md-12">
  			
  		<button type="button" data-ng-click="leftbtn()" class="btn btn-default carousel-control left">
		<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
		</button>
  		
  		
  		<form data-ng-submit="question()" role="form" >
  		
<!--   		<div data-ng-show="num == 0"><img src="http://nv2.adcreative.naver.net/ad3/1004/1004874/1_1820.jpg" class="center-block" alt="Responsive image">  -->
<!--   			<div class="col-xs-12" >성별: -->
<!-- 				  <div class="btn-group" > -->
<!-- 					<label for="rgman" class="btn btn-default btn-lg"> -->
<!-- 						<input type="radio" name="s1" id="rgman" data-ng-model="s1" autocomplete="off" value="a">남 -->
<!-- 					</label> -->
<!-- 					<label for="rgwomen" class="btn btn-default btn-lg"> -->
<!-- 						 <input type="radio" name="s1" id="rgwomen" data-ng-model="s1" autocomplete="off" value="b">여 -->
<!-- 					</label> -->
<!-- 				  </div> -->
<!-- 			</div> -->
<!--   		</div> -->

		<div data-ng-show="num == 0"></div>
	    <div data-ng-show="num == 1"></div>
	    <div data-ng-show="num == 2"></div>
	    <div data-ng-show="num == 3"></div>
	    <div data-ng-show="num == 4"></div>
		
		
		<div data-ng-repeat="article in articles">
		{{article.id}}
		<a href="show_content">{{article.title}}</a>
		{{article.writerName}}
		</div>
		
		
		
		
		
		<button data-ng-show="num == 4" type="submit" class="btn btn-primary">보내기</button>
		</form>
		
		<button type="button" data-ng-click="rightbtn()" class="btn btn-default carousel-control right">
		<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		</button>
		
	</div>

</div>


</body>
</html>