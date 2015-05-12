<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h2>여기는 heartlinkrecord 입니다</h2>
<h3>heartlinkrecordCOntroller를 heartlink 게임 내역을 보여줍니다.</h3>


<h1>여기는 대표 </h1>
<div data-ng-repeat="match in matchs">
	<div class="btn btn-default">{{match.answer1}}</div>
</div>
<hr>



<div data-ng-repeat="answer in answers">
	<div class="btn btn-default" data-ng-click="change(answer.num)">{{answer.answer1}}</div>
</div>

