<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<!DOCTYPE html>
<html data-ng-app="myApp">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0">



<title>main.jsp</title>
<%@ include file="/WEB-INF/common.jspf" %>

</head>
<body data-ng-controller="mainController">
<!-- ############## -->
<!-- Navigation Bar -->
<!-- ############## -->
<div data-ng-show="login.status">
	<nav class="navbar navbar-default navbar-fixed-bottom">
		<div class="container-fluid">
			<div class="navbar-header">

				<a class="navbar-brand active glyphicon glyphicon-home" href="#/home"></a>
				<a class="navbar-brand active" href="#/profile"><small>프로필</small></a>
				<a class="navbar-brand active" href="#/mysituation"><small>운명현황</small></a>
				<a class="navbar-brand active" href="#/heartlinkrecord"><small>게임이력</small></a>
				<a class="navbar-brand active" href="#/examjsp"><small>연습용</small></a>
				<a class="navbar-brand active" href="#/last"><small>last연습용</small></a>

				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav" data-ng-show="login.status">
				    <li><a href="#/list_view">Q&A 게시판</a></li>
				    <li><a href="#/question">게임예시</a></li>
				    <li class="dropdown">
			        	<a class="dropdown-toggle" data-toggle="dropdown" href="">Page 3
			        	<span class="caret"></span></a>
				        <ul class="dropdown-menu">
				            <li><a href="#">Page 3-1</a></li>
				            <li><a href="#">Page 3-2</a></li>
				            <li><a href="#">Page 3-3</a></li>
				        </ul>
			        </li>
				    <li><a href="#/about">About</a></li>
				    <li><a href="#/contact">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				    <li><a href="#/" data-ng-if="login.status" data-ng-click="logout()"><span class="glyphicon glyphicon-log-in" ></span> Logout</a></li>
				    <li><a href="#/login" data-ng-if="!login.status"><span class="glyphicon glyphicon-log-in" ></span> Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>

<!-- ################ -->
<!-- ng-view Template -->
<!-- ################ -->
<div class="page {{ pageClass }}" data-ng-view
								  data-ng-swipe-left="swipeLeft()"
								  data-ng-swipe-right="swipeRight()"
								  >
<!-- default page = home -->
</div>

</body>
</html>

