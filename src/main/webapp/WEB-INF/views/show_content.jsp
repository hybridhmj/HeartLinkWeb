<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<h1>내용 보기 :)</h1>
<hr>

<div>

<form>
<table border="1">
	<tr>
		<td>글 번호 : {{artices.id}}</td>
		<td>제목 : {{artices.title}}</td>
		<td>작성자 : {{artices.writerName}}</td>
	</tr>
	<tr>
		<td colspan="3">
			<textarea rows="30" cols="50">{{artices.content}}</textarea>
		</td>
	</tr>
</table>
</form>

</div>

<br>

<a href="#list_view" class="btn btn-primary" style="color: white">목록보기</a>
<a href="#/write_form" class="btn btn-primary" style="color: white">Q&A작성</a>
