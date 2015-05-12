<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">

<h1>수정 내용 입력 :)</h1>
<h2>수정하세요!</h2>
<hr>
<!-- <div>{{newContent}}</div> -->
<div>

<form>
<table border="1">
	<tr>
		<td>글 번호 : {{artices.id}}</td>
		<td>제목 : <textarea data-ng-model="newTitle">{{artices.title}}</textarea></td>
		<td>작성자 : <textarea data-ng-model="newWriterName">{{artices.writerName}}</textarea></td>
		<td>비밀번호 : <textarea data-ng-model="newPassword">{{artices.password}}</textarea></td>
	</tr>
	<tr>
		<td colspan="4">
			<textarea data-ng-model="newContent" rows="30" cols="50">{{newContent}}</textarea>
		</td>
	</tr>
</table>
</form>

</div>



<a href="#list_view" class="btn btn-primary" style="color: white">목록보기</a>
<a class="btn btn-primary" data-ng-click="updateForm()" type="POST">수정하기</a>
</form>
