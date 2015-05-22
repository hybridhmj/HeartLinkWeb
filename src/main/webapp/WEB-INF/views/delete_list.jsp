<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">

<div class="container">

<h1>삭제 :)</h1>
<hr>

<form class="form-group">
<pre>
삭제하려면, <br>
비밀번호를 입력하세요 :) <br>

<label for="password">Password : </label>
<input class="form-control" type="password" id="password" name="password" data-ng-model="password" size="20" placeholder="비밀번호를 입력하세요" required="required"/><br>
<span style="color: #0066FF">{{message}}</span>
<br>
</pre>

<a href="#/list_view" class="btn btn-primary" style="color: white">목록보기</a>
<a class="btn btn-primary" data-ng-click="deleteID(password)" type="POST">확인</a>

</form>
</div>