<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">



<h1>Q&A 리스트 :)</h1>
<hr>

<div>
<table border="1">

	<tr style="background-color: pink">
		<th>글 번호</th>
		<th>제목</th>
		<th>작성자</th>

	</tr>
	<tr data-ng-repeat="article in articles">
		<td>{{article.id}}</td>
		<td><a class="btn" data-ng-click="showId(article.id)" type="GET">{{article.title}}</a></td>
		<td>{{article.writerName}}</td>
	</tr>
</table> 
</div>

<hr>

<nav>
  <ul class="pagination">
    <li data-ng-show="pages[0]!=1">
      <a class="btn" data-ng-click="backPage(pages[0])" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li data-ng-repeat="n in pages">
    <a class="btn" data-ng-click="callPage(n)">{{n}}</a>
    </li>
  
    <li data-ng-show="pages.length==5">
      <a class="btn" data-ng-click="nextPage(pages[4])" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

<a href="#/write_form" class="btn btn-primary" style="color: white">Q&A작성</a>







