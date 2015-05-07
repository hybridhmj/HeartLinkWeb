<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h1>{{title}}</h1>
<hr>

<ul>
<li>
<table border="1">

	<tr style="background-color: pink">
		<th>글 번호</th>
		<th>제목</th>
		<th>작성자</th>

	</tr>
	
	<tr data-ng-repeat="article in articles">
		<td>{{article.id}}</td>
		<td><a href="show_content">{{article.title}}</a></td>
		<td>{{article.writerName}}</td>
	</tr>
</table> 
<hr>
</li>

<li>


</li>
</ul>
<a href="#/write_form">Q&A작성</a>
