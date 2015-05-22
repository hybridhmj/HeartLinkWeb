<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style>

	#topbar {
		background-color: rgb(119,211,206);
		color: white;
		margin-bottom: 15%;
		font-size: 2em;
	}
	
	
	.center-block {
	  display: block;
	  margin-right: auto;
	  margin-left: auto;
	  margin-top: 5%;
	}
	
	.img-responsive,
	.thumbnail > img,
	.thumbnail a > img,
	.carousel-inner > .item > img,
	.carousel-inner > .item > a > img {
	  display: block;
	  max-width: 80%;
	  height: auto;
	}
	
</style>


<!-- login.jsp -->
<div id="topbar" class="container-fluid">로그인</div>

<div class="contatiner">
<c:url var="image" value="/image"/> 
     <img src="${image}/heartlink.jpg" class="img-responsive center-block" alt="Responsive image">




<form id="logform" name="logform" novalidate="novalidate" data-ng-submit="submit()" style="width: 70%; margin: 6em auto auto auto; border: 1px solid blue;">
<span class="glyphicon glyphicon-hand-down" aria-hidden="true"><small>아이디와 비밀번호를 입력해주세요.</small></span><p></p>
<div class="row">
  <div class="col-xs-12"><input type="text" class="form-control" name="id" data-ng-model="id" placeholder="아이디"/></div>
</div>
<div class="row">
  <div class="col-xs-12"><input type="password" class="form-control" name="password" data-ng-model="password" placeholder="비밀번호"/></div>
</div>
<div class="row">
<div class="col-xs-6"><a class="btn" href="#/register" data-ng-show="!login.status"><span class="glyphicon glyphicon-user"></span> 회원가입</a></div>
<div class="col-xs-6"><input type="submit" value="로그인" class="btn"/></div>
</div>

<span style="color:red;" data-ng-show="loginfail.status==false"><small>아이디 또는 비밀번호를 다시 확인하세요.</small></span>




</form>




<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="top: 200px;">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-body">
         로그인 실패하셨습니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
      </div>
    </div>
  </div>
</div>


</div>

<!-- 민트색 -->
<!-- R 119 / G 211 / B 206 -->
<!-- 핑크 -->
<!-- R232 G66 B90 -->