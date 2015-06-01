<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">


<div class="container">

<h1>수정 내용 입력 :) </h1>
<h2>글 번호 : {{artices.id}}</h2>
<hr>

<form>
<pre>

<label for="newTitle" class="control-label col-sm-2">제목 : </label>
<textarea data-ng-model="newTitle" id="newTitle" name="newTitle" class="form-control" cols="20" rows="2" maxlength="50"  data-ng-required="true">{{artices.title}}</textarea>

<label for="newWriterName" class="control-label col-sm-2">작성자 : </label>
<textarea data-ng-model="newWriterName" id="newWriterName" name="newWriterName" class="form-control" cols="20" rows="2" maxlength="20"  data-ng-required="true">{{artices.writerName}}</textarea>

<label for="newPassword" class="control-label col-sm-2">비밀번호 : </label>
<textarea data-ng-model="newPassword" id="newPassword" name="newPassword" class="form-control" cols="20" rows="2" maxlength="20"  data-ng-required="true">{{artices.password}}</textarea>	

<label for="newContent" class="control-label col-sm-2">글내용 : </label>
<textarea data-ng-model="newContent" id="newContent" name="newContent" class="form-control" cols="40" rows="5"  data-ng-required="true">{{newContent}}</textarea>

</pre>
<a href="#list_view" class="btn btn-primary" style="color: white">목록보기</a>
<a class="btn btn-primary" data-ng-click="updateForm()" type="POST">수정하기</a>
</form>

</div>

<!-- <div> -->
<!-- <table> -->
<!-- 	<tr> -->
<!-- 		<td><pre>글 번호 : {{artices.id}}</pre></td> -->
<!-- 		<td><pre>제목 : <textarea data-ng-model="newTitle">{{artices.title}}</textarea></pre></td> -->
<!-- 		<td><pre>작성자 : <textarea data-ng-model="newWriterName">{{artices.writerName}}</textarea></pre></td> -->
<!-- 		<td><pre>비밀번호 : <textarea data-ng-model="newPassword">{{artices.password}}</textarea></pre></td> 	 -->
<!-- 	</tr> -->

<!-- 	<tr> -->
<!-- 		<td colspan="4"> -->
<!-- 			<pre><textarea data-ng-model="newContent" rows="30" cols="50">{{newContent}}</textarea></pre> -->
<!-- 		</td> -->
<!-- 	</tr> -->
<!-- </table> -->
<!-- </div> -->
