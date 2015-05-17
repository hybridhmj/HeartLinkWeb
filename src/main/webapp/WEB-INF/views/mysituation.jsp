<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h2>여기는 mysituation 입니다</h2>
<h3>mysituationCOntroller를 heartlink 상황을 보여줍니다.</h3>
<div class="container">
	
	<div data-ng-repeat="request in requests">
		{{request.requestid}}<br>
	</div>

</div>