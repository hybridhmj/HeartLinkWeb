<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style>
	#logback {
		font-size: x-large;
		background-color: rgb(119,211,206);
	}
	
	
	.center-block {
	  display: block;
	  margin-right: auto;
	  margin-left: auto;
	  margin-top: 5%;
	}
	
	.img-responsive,
	.thumbnail > img,
	.thumbnail a > img,
	.carousel-inner > .item > img,
	.carousel-inner > .item > a > img {
	  display: block;
	  max-width: 60%;
	  height: auto;
	}
	
</style>

<!-- login.jsp -->
<div id="logback" class="container-fluid">로그인</div>

<div class="contatiner">
<c:url var="image" value="/image"/> 
     <img src="${image}/heartlink.jpg" class="img-responsive center-block" alt="Responsive image">
</div>


<form id="logform" novalidate="novalidate" data-ng-submit="submit()" style="width: 80%; margin: 50px auto; border: 1px solid blue;">
<input type="text" class="form-control" name="id" data-ng-model="id" placeholder="아이디를 입력하세요."/>
<input type="password" class="form-control" name="password" data-ng-model="password" placeholder="비밀번호를 입력하세요."/><br>
<input type="submit" value="로그인" class="btn"/>
<input type="reset" value="Reset" class="btn"/>

<a href="#/register" data-ng-show="!login.status"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
</form>









<!-- 민트색 -->
<!-- R 119 / G 211 / B 206 -->
<!-- 핑크 -->
<!-- R232 G66 B90 -->