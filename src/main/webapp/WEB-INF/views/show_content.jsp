<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">




<div class="container">

<h1>내용 보기 :)</h1>
<hr>


<table class="table">
	<tr>
		<th><pre>글 번호 : {{artices.id}}</pre></th>
		<th><pre>제목 : {{artices.title}}</pre></th>
		<th><pre>작성자 : {{artices.writerName}}</pre></th>
	</tr>
	<tr>
<!-- 		<td colspan="3" width="70%" height="30%" ng-bind-html="newContent"></td> -->
		<td colspan="3" width="70%" height="30%"><pre>{{artices.content}}</pre></td>
	</tr>
</table>


<br>

<a href="#/list_view" class="btn btn-primary" style="color: white">목록보기</a>
<a href="#/write_form" class="btn btn-primary" style="color: white">Q&A작성</a>
<a href="#/update_list/{{id}}" class="btn btn-primary" style="color: white">수정</a>
<a href="#/delete_list/{{id}}" class="btn btn-primary" style="color: white">삭제</a>
</div>