<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<!-- home.jsp -->

<h2>게임하기</h2>
<!-- <h3>로그인 id = {{login.user.id}}</h3>
<h4>여기에는 로그인 후에 볼수있는 홈화면입니다.
우리는 여기에 연애운세를 띄울 예정입니다.
</h4> -->

<form data-ng-submit="homesubmit()" role="form" method="post">
	<div>대상 : 
		<div class="btn-group">
			<label for="hmequal" class="btn btn-info btn-lg">
			<input type="radio" name="hmsex" id="hmequal" data-ng-model="hmsex" value="equal">동성
			</label>
			<label for="hmdifferent" class="btn btn-default btn-lg">
			<input type="radio" name="hmsex" id="hmdifferent" data-ng-model="hmsex" value="different">이성
			</label>
		</div>
	</div>
	
	<hr>
	
	<div class="dropdown">
		<button class="btn btn-default dropdown-toggle" type="button" id="rocaledropdown" data-toggle="dropdown" aria-expanded="true">
		유형<span class="caret"></span>
 		</button>
 		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">A</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">B</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">C</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">D</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">E</a></li>
		    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">F</a></li>
  		</ul>
	</div>
	
	<hr>
	
	<section>
		적중률 : 
	</section>

</form>

<hr>



<a href="#about" class="btn btn-success btn-lg">About</a>
<a href="#contact" class="btn btn-danger btn-lg">Contact</a>    
