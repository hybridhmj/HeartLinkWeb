<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">


<div class="container">

<h1>Q&A 작성 :)</h1>
<hr>

<!-- <form name="writeForm" data-ng-model="writeForm"> -->
<form name="writeForm" data-ng-model="writeForm">
<pre>
<!-- <div class="form-group"> -->
	<label class="control-label col-sm-2" for="title">제목 : </label>
	<input class="form-control" type="text" id="title" name="title" data-ng-model="title" data-ng-required="true" pattern="^.{3,50}$" maxlength="50" placeholder="제목을 입력하세요"/>
	<span style="color: #0066FF" data-ng-show="writeForm.title.$dirty==true && writeForm.title.$valid==false && writeForm.title.$error.pattern==true">제목은 필수입력입니다. 3~50자 이내로 입력하세요 :)</span>
<!-- </div>	 -->
	<label class="control-label col-sm-2" for="writerName">작성자 : </label>
	<input class="form-control" type="text" id="writerName" name="writerName" data-ng-model="writerName" data-ng-required="true" pattern="^.{3,20}$" maxlength="20" placeholder="이름을 입력하세요"/>
	<span style="color: #0066FF" data-ng-show="writeForm.writerName.$dirty==true && writeForm.writerName.$valid==false && writeForm.writerName.$error.pattern==true">이름은 필수입력입니다. 3~20자 이내로 입력하세요 :)</span>
		
	<label class="control-label col-sm-2" for="password">비밀번호 : </label>
	<input class="form-control" type="password" id="password" name="password" data-ng-model="password" data-ng-required="true" pattern="^.{3,20}$" maxlength="20" placeholder="비밀번호를 입력하세요"/>
	<span style="color: #0066FF" data-ng-show="writeForm.password.$dirty==true && writeForm.password.$valid==false && writeForm.password.$error.pattern==true">비밀번호는 필수입력입니다. 3~20자 이내로 입력하세요 :)</span>
	
	
	<label class="control-label col-sm-2" for="contenta">글내용 : </label>
	<!-- 이름을 content 로 하지말것 에러난다 바인딩이 안됨 -->
	<textarea class="form-control" name="contenta" id="contenta" data-ng-model="contenta" cols="40" rows="5" data-ng-required="true" placeholder="내용을 입력하세요"> </textarea>
	<span style="color: #0066FF" data-ng-show="writeForm.contenta.$dirty==true && writeForm.contenta.$valid==false">내용은 필수입력입니다 :)</span>
</pre>
</form>
<br>

<input type="submit" value="submit" name="submit" id="submit" class="btn btn-primary" data-ng-click="qnasubmit()"/>
<input type="reset" value="reset" class="btn btn-primary"/>

<a href="#/list_view" class="btn btn-primary" style="color: white">목록보기</a>
</div>