<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>
<meta name="viewport" content="width=device-width; initial-scale=1.0">

<h1>Q&A 작성 :)</h1>
<hr>

<pre>
제목 : <input type="text" id="title" name="title" data-ng-model="title" required="required"/> <br>
작성자 : <input type="text" id="writerName" name="writerName" data-ng-model="writerName" placeholder="이름을 입력하세요" required="required"/><br>
비밀번호 : <input type="password" id="password" name="password" data-ng-model="password" placeholder="비밀번호를 입력하세요" required="required"/><br>
글내용 : <br>
<!-- 이름을 content 로 하지말것 에러난다 바인딩이 안됨 -->
<textarea name="contenta" id="contenta" data-ng-model="contenta" cols="40" rows="10" required="required"> </textarea> <br>
</pre>

<input type="submit" value="submit" name="submit" id="submit" class="btn btn-primary" data-ng-click="qnasubmit()"/>
<input type="reset" value="reset" class="btn btn-primary"/>

<a href="#/list_view" class="btn btn-primary" style="color: white">목록보기</a>
