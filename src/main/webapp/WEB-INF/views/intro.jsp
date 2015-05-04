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

app.controller("mainController", function($scope) {
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
  		
  		<img data-ng-show="num == 0" src="http://nv2.adcreative.naver.net/ad3/1004/1004874/1_1820.jpg" class="center-block" alt="Responsive image">
	    <img data-ng-show="num == 1" src="http://nv2.adcreative.naver.net/ad3/1004/1004874/1_1820.jpg" class="center-block" alt="Responsive image" >
	    <img data-ng-show="num == 2" src="http://img.naver.net/static/www/mobile/edit/2015/0430/mobile_14321058691.jpg" class="center-block" alt="Responsive image">
	    <img data-ng-show="num == 3" src="http://img.naver.net/static/www/u/2015/0430/nmms_115529311.jpg" class="center-block" alt="Responsive image">
	    <img data-ng-show="num == 4" src="http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif" class="center-block" alt="Responsive image">
		
		<button type="button" data-ng-click="rightbtn()" class="btn btn-default carousel-control right">
		<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		</button>
		
	</div>

</div>

<div class="row container">
		  <div class="col-xs-6 text-center"> <button type="button" class="btn btn-info">체험하기</button></div>
		  <div class="col-xs-6 text-center"><a href="login" class="btn btn-info">운명찾기</a></div>
		
</div>

</body>
</html>