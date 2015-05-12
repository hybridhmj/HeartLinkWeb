<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h2>여기는 프로필 jsp_1 입니다</h2>
<h3>profile_1COntroller를 사용해서 개인정보를 불러올 곳입니다.</h3>

<form class="form-inline">
	<div class="form-group">
		<label for="conditionMessage">상태 메시지</label> 
		<input type="text" class="form-control" id="conditionMessage" name="conditionMessage" data-ng-model="conditionMessage" placeholder="상태 메세지를 입력하세요">
		<button type="submit" class="btn btn-danger" data-ng-click="click(conditionMessage)">입력</button>
		
	</div>
</form>
<!-- <p data-ng-bind="conditionMessage"></p> -->
