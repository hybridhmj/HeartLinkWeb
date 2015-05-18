<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<!-- about.jsp -->

<h1>개인 쪽찌함</h1>
<h2>Note</h2>
<div data-ng-repeat = "note in notes">
{{note.message}}
</div>