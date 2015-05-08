<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h1>Q&A 리스트 :)</h1>
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
		<td><a data-ng-click="showId(article.id)" type="GET">{{article.title}}</a></td>
<!-- 		<td><a href="qna/ccc?id=" data-ng-click="showId({{article.id}})" type="GET">{{article.title}}</a></td> -->
		<td>{{article.writerName}}</td>
	</tr>
</table> 
<hr>
</li>

<li>


</li>
</ul>
<<<<<<< HEAD
<a href="#/write_form" class="btn btn-primary" style="color: white">Q&A작성</a>
=======
<a href="#/write_form" data-ng-click="aaa()">Q&A작성</a>
>>>>>>> 8b384b23bbd502fa479ef07d6fd938a76a9a1dd2
