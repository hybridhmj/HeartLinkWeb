<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<!-- about.jsp -->

<h1>개인 쪽찌함</h1>
<h2>Note</h2>
<div >

</div>

<div class="container">
	<table class="table">
	<tr data-ng-repeat = "note in notes">
		<td>{{note.message}}</td> <td><button data-ng-click="msgdelete(note.num)" class="btn btn-default">삭제</button></td>
	</tr>
	</table>
</div>