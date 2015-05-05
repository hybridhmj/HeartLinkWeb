<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	#logback {
		font-size: x-large;
		background-color: rgb(119,211,206);
	}
	
	#logform {
	position: fixed;
	top: 60%;
	left: 15%
	
	}
	
	
</style>

<!-- login.jsp -->
<div id="logback" class="container-fluid">로그인</div>



<img src="http://localhost:8080/HeartLinkWeb/src/main/webapp/linkheart.jpg" class="img-responsive" alt="Responsive image">

<form id="logform" novalidate="novalidate" data-ng-submit="submit()">
<input type="text" name="id" data-ng-model="id"/>
<input type="password" name="password" data-ng-model="password"/><br>
<input type="submit" value="로그인" class="btn"/>
<input type="reset" value="Reset" class="btn"/>

<a href="#/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a>

</form>

<!-- 민트색 -->
<!-- R 119 / G 211 / B 206 -->
<!-- 핑크 -->
<!-- R232 G66 B90 -->