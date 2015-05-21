<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<style type="text/css">
	#topbar {
			background-color: rgb(119,211,206);
			color: white;
			margin-bottom: 15%;
			font-size: 2em;
			}
		
</style>


<div id="topbar" class="container">HearLink 이력</div>

<h1>여기는 대표 </h1>
<div data-ng-repeat="match in matchs">
	<div class="btn btn-default">{{match.answer1}}</div>
</div>
<hr>



<div data-ng-repeat="answer in answers">
	<div class="btn btn-default" data-ng-click="change(answer.num)">{{answer.answer1}}</div>
</div>

