<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
	#logback {
		font-size: x-large;
		background-color: rgb(119,211,206);
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
	  max-width: 90%;
	  height: auto;
	}
	
</style>

<!-- login.jsp -->
<div id="logback" class="container-fluid">로그인</div>

<div class="contatiner">
<c:url var="image" value="/image"/> 
     <img src="${image}/linkheart.jpg" class="img-responsive center-block" alt="Responsive image">
</div>
<form id="logform" novalidate="novalidate" data-ng-submit="submit()">
<input type="text" class="form-control" name="id" data-ng-model="id"/>
<input type="password" class="form-control" name="password" data-ng-model="password"/><br>
<input type="submit" value="로그인" class="btn"/>
<input type="reset" value="Reset" class="btn"/>

<a type="button" data-toggle="modal" data-target="#myModal" data-ng-show="!login.status"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
</form>


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">마음맺기 가입</h4>
      </div>
      
      <div class="modal-body">
      	<form data-ng-submit="registersubmit()" role="form" method="post">
	      	<div class="row form-group">
			  <div class="col-xs-12">
			  	<label for="rgid"></label>
			    <input type="text" class="form-control" data-ng-model="rgid" id="rgid" name="rgid" placeholder="아이디">
			  </div>
			  <div class="col-xs-12">
			  	<label for="rgpassword"></label>
			    <input type="password" class="form-control" id="rgpassword" name="rgpassword" placeholder="비밀번호">
			  </div>
			  <div class="col-xs-12">
			  	<label for="ckpassword"></label>
			    <input type="password" class="form-control" id="ckpassword" placeholder="비밀번호 재확인">
			  </div>
			  <div class="col-xs-12">
			  	<label for="rgbirth"></label>
			    <input type="number" class="form-control" id="rgbirth" name="rgbirth" placeholder="생년월일(-없이)">
			  </div>
			</div>  
			
			<div class="row form-group">  
			  <div class="col-xs-12" >성별:
				  <div class="btn-group" >
					<label for="rgman" class="btn btn-default btn-lg">
						<input type="radio" name="rgsex" id="rgman" data-ng-model="rgsex" autocomplete="off" value="mail">남
					</label>
					<label for="rgwomen" class="btn btn-default btn-lg">
						 <input type="radio" name="rgsex" id="rgwomen" data-ng-model="rgsex" autocomplete="off" value="femail">여
					</label>
				  </div>
				</div>
			</div>
			
			
			
			<label for="rgarea">지역 : </label>
      		<select class="form-control" id="rgarea" name="rgarea" data-ng-model="rgarea">
		        <option>서울</option>
		        <option>인천</option>
		        <option>강원</option>
		        <option>부산</option>
      		</select>
      		
      		<div class="row form-group">  
	      		<div class="col-xs-12">
	      			<label for="kakaoid"></label>
			    	<input type="text" class="form-control" id="kakaoid" name="rgkakaoid" placeholder="카카오톡ID">
	      		</div>
			</div>
			
			
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
		        <button type="submit" class="btn btn-primary">가입하기</button>
		      </div>
      	</form>
      </div>

     
      
    </div>
  </div>
</div>









<!-- 민트색 -->
<!-- R 119 / G 211 / B 206 -->
<!-- 핑크 -->
<!-- R232 G66 B90 -->