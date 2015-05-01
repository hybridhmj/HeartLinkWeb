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
	
	$scope.countm = function() {
		$scope.num = $scope.num + 1;
		alert("countm");

	};
	
	$scope.countp = function() {
		$scope.num = $scope.num - 1;
		alert("countp");
	};

	
});

</script>

<style type="text/css">
	body {
		border: 1px solid red;
		width: 100%;
		height: 400px;
		
	}
</style>

<title>template.jsp</title>
</head>
<body data-ng-controller="mainController"
	  data-ng-swipe-left="countm()"
	  data-ng-swipe-right="countp()"      
>

 	<div data-ng-show="num == 0">여기는 0<img src="http://nv2.adcreative.naver.net/ad3/1004/1004874/1_1820.jpg"  class="img-rounded center-block"></div>
    <div data-ng-show="num == 1">여기는 1<img src="http://nv2.adcreative.naver.net/ad3/1004/1004874/1_1820.jpg" class="img-rounded center-block"></div>
    <div data-ng-show="num == 2">여기는 2<img src="http://img.naver.net/static/www/mobile/edit/2015/0430/mobile_14321058691.jpg" class="img-rounded center-block"></div>
    <div data-ng-show="num == 3">여기는 3<img src="http://img.naver.net/static/www/u/2015/0430/nmms_115529311.jpg" class="img-rounded center-block"></div>
    <div data-ng-show="num == 4">여기는 4<img src="http://img.naver.net/static/www/u/2013/0731/nmms_224940510.gif" class="img-rounded center-block"></div>

<div><a>게임하기</a> </div>

</body>
</html>