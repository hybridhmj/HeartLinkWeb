<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style>

	#registermenu, #btnkk {
		font-size: x-large;
		background-color: rgb(119,211,206);
	}
	
		.center-block {
	  display: block;
	  margin-right: auto;
	  margin-left: auto;
	  margin-top: auto;
	  margin-bottom: 3%;
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




<div id="registermenu" class="container text-center" style="font-size: 2em;">회원가입</div>
       
        
      <div class="container">
	<c:url var="image" value="/image"/> 
     <img src="${image}/registerlogo.jpg" class="img-responsive center-block" alt="Responsive image">
      
      	<form name="registerForm" data-ng-model="registerForm" data-ng-submit="registersubmit()" role="form" method="post" class="form-horizontal" style="width: 100%; margin: 0 auto;">
	      	
	      	<div class="form-group">
	      		 <label for="rgid" class="col-xs-3 control-label">ID</label>
				 <div class="col-xs-9">
				    <input type="text" class="form-control" data-ng-required="true" pattern="^.{5,15}$" data-ng-model="rgid" id="rgid" name="rgid" placeholder="아이디" maxlength="15">
				    <span style="color:red;" data-ng-show="registerForm.rgid.$dirty==true && registerForm.rgid.$valid==false">ID는 필수 입력 항목입니다.</span>
				    <span style="color:red;" data-ng-show="registerForm.rgid.$error.pattern==true">ID는 5~15 자리까지 사용가능</span>
				 </div>
			</div>
			
			
			
			
<!-- 			<p>registerForm = {{registerForm}}</p> -->
<!-- 			<p>registerForm.rgid.$dirty = {{registerForm.rgid.$dirty}}</p> -->
<!-- 			<p>registerForm.rgid.$pristine = {{registerForm.rgid.$pristine}}</p> -->
<!-- 			<p>registerForm.rgid.$valid = {{registerForm.rgid.$valid}}</p> -->
<!-- 			<p>registerForm.rgid.$invalid = {{registerForm.rgid.$invalid}}</p> -->
<!-- 			<p>registerForm.rgid.$error = {{registerForm.rgid.$error}}</p> -->
<!-- 			<p>registerForm.rgid.$pattern = {{registerForm.rgid.$pattern}}</p> -->

			

			<div class="form-group">
	      		 <label for="rgpassword" class="col-xs-3 control-label">Password</label>
				 <div class="col-xs-9">
				    <input type="password" class="form-control" data-ng-required="true" pattern="^.{8,20}$" data-ng-model="rgpassword" id="rgpassword" name="rgpassword" placeholder="비밀번호" maxlength="20">
				    <span style="color:red;" data-ng-show="registerForm.rgpassword.$dirty==true && registerForm.rgpassword.$valid==false">비밀번호는 필수 입력 항목입니다.</span>
				 	<span style="color:red;" data-ng-show="registerForm.rgpassword.$error.pattern==true">Password는 8~20 자리까지 사용가능</span>
				 </div>
			</div>
			
			
			
<!-- 			<p>registerForm.rgpassword.$dirty = {{registerForm.rgpassword.$dirty}}</p> -->
<!-- 			<p>registerForm.rgpassword.$pristine = {{registerForm.rgpassword.$pristine}}</p> -->
<!-- 			<p>registerForm.rgpassword.$valid = {{registerForm.rgpassword.$valid}}</p> -->
<!-- 			<p>registerForm.rgpassword.$invalid = {{registerForm.rgpassword.$invalid}}</p> -->
<!-- 			<p>registerForm.rgpassword.$error = {{registerForm.rgpassword.$error}}</p> -->
<!-- 			<p>registerForm.rgpassword.$pattern = {{registerForm.rgpassword.$pattern}}</p> -->
			
			
			<div class="form-group">
	      		 <label for="ckpassword" class="col-xs-3 control-label">재 확인</label>
				 <div class="col-xs-9">
				    <input type="password" class="form-control" data-ng-required="true" data-ng-model="ckpassword" id="ckpassword" name="ckpassword" placeholder="비밀번호 재확인" />
				    <span style="color:red;" data-ng-show="rgpassword != ckpassword && registerForm.rgpassword.$dirty==true && registerForm.ckpassword.$dirty==true">비밀번호가 다릅니다.</span>
				 </div>
			</div>

			
			
			
			
			<div class="form-group">
	      		 <label for="rgbirth" class="col-xs-3 control-label">나이</label>
				 <div class="col-xs-9">
				    <input type="number" class="form-control" data-ng-required="true" pattern="^[1-9][0-9]{1,2}$" data-ng-model="rgbirth" id="rgbirth" name="rgbirth" placeholder="예) 20 " maxlength="2">
				 	<span style="color:red;" data-ng-show="registerForm.rgbirth.$dirty==true && registerForm.rgbirth.$valid==false">나이는 필수 입력 항목입니다.</span>
				 	<span style="color:red;" data-ng-show="registerForm.rgbirth.$error.pattern==true">나이는 두 자리 숫자만 사용가능</span>
				 </div>
			</div>
			
<!-- 			<p>registerForm.rgbirth.$dirty = {{registerForm.rgbirth.$dirty}}</p> -->
<!-- 			<p>registerForm.rgbirth.$pristine = {{registerForm.rgbirth.$pristine}}</p> -->
<!-- 			<p>registerForm.rgbirth.$valid = {{registerForm.rgbirth.$valid}}</p> -->
<!-- 			<p>registerForm.rgbirth.$invalid = {{registerForm.rgbirth.$invalid}}</p> -->
<!-- 			<p>registerForm.rgbirth.$error = {{registerForm.rgbirth.$error}}</p> -->
<!-- 			<p>registerForm.rgbirth.$pattern = {{registerForm.rgbirth.$pattern}}</p>	 -->
			
			


			<div class="form-group">
				   <label class="col-xs-3 control-label">성별</label>
				  <div class="col-xs-9">
					  <div class="btn-group">
						<label for="rgman" class="btn btn-default btn-lg" >
							<input data-ng-required="true" type="radio" name="rgsex" id="rgman" data-ng-model="rgsex" autocomplete="off" value="mail"/>남
						</label>
						<label for="rgwomen" class="btn btn-default btn-lg">
							 <input data-ng-required="true" type="radio" name="rgsex" id="rgwomen" data-ng-model="rgsex" autocomplete="off" value="femail"/>여
						</label>	
					  </div>
				</div>
			</div>
			
			
<!-- 			<p>registerForm.rgsex.$dirty = {{registerForm.rgsex.$dirty}}</p> -->
<!-- 			<p>registerForm.rgsex.$pristine = {{registerForm.rgsex.$pristine}}</p> -->
<!-- 			<p>registerForm.rgsex.$valid = {{registerForm.rgsex.$valid}}</p> -->
<!-- 			<p>registerForm.rgsex.$invalid = {{registerForm.rgsex.$invalid}}</p> -->
<!-- 			<p>registerForm.rgsex.$error = {{registerForm.rgsex.$error}}</p> -->
			
			
				
			<div class="form-group">
				<label class="col-xs-3 control-label">지역</label>
				<div class="col-xs-9" >
		      		<select class="form-control" id="rgarea" name="rgarea" data-ng-model="rgarea" data-ng-required="true">
				        <option>서울</option>
				        <option>인천</option>
				        <option>강원</option>
				        <option>부산</option>
		      		</select>
		      		<span style="color:red;" data-ng-show="registerForm.rgarea.$dirty==true && registerForm.rgarea.$valid==false">카톡ID는 필수 입력 항목입니다.</span>
	      		</div>
      		</div>
      		
<!--       		<p>registerForm.rgarea.$dirty = {{registerForm.rgarea.$dirty}}</p> -->
<!-- 			<p>registerForm.rgarea.$pristine = {{registerForm.rgarea.$pristine}}</p> -->
<!-- 			<p>registerForm.rgarea.$valid = {{registerForm.rgarea.$valid}}</p> -->
<!-- 			<p>registerForm.rgarea.$invalid = {{registerForm.rgarea.$invalid}}</p> -->
<!-- 			<p>registerForm.rgarea.$error = {{registerForm.rgarea.$error}}</p> -->
      		
      		
      		
      		 <div class="form-group">
      			<label for="kakaoid" class="col-xs-3 control-label">카톡ID</label>
	      		<div class="col-xs-9">
			    	<input type="text" class="form-control" data-ng-required="true" data-ng-model="kakaoid"  id="kakaoid" name="kakaoid" placeholder="카카오톡ID">
	      			<span style="color:red;" data-ng-show="registerForm.kakaoid.$dirty==true && registerForm.kakaoid.$valid==false">카톡ID는 필수 입력 항목입니다.</span>
	      		</div>
			</div>
      		

			
<!-- 			<p>registerForm.kakaoid.$dirty = {{registerForm.kakaoid.$dirty}}</p> -->
<!-- 			<p>registerForm.kakaoid.$pristine = {{registerForm.kakaoid.$pristine}}</p> -->
<!-- 			<p>registerForm.kakaoid.$valid = {{registerForm.kakaoid.$valid}}</p> -->
<!-- 			<p>registerForm.kakaoid.$invalid = {{registerForm.kakaoid.$invalid}}</p> -->
<!-- 			<p>registerForm.kakaoid.$error = {{registerForm.kakaoid.$error}}</p> -->
			
			
			
		      <div class="form-group">
			    <div class="col-xs-offset-5 col-xs-7">
			    <button type="submit" class="btn btn-primary" data-ng-disabled="!registerForm.$valid">가입하기</button>
			   <a href="#/login" class="btn btn-default">나가기</a>

			    </div>
			  </div>
<!-- 		        			<p>registerForm.$valid = {{registerForm.$valid}}</p> -->
      	</form>
      	

      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	
      	

<!-- <div id="registermenu" class="container-fluid text-center">회원가입</div> -->
       
        
<!--       <div class="container"> -->
<%-- 	<c:url var="image" value="/image"/>  --%>
<%--      <img src="${image}/registerlogo.jpg" class="img-responsive center-block" alt="Responsive image"> --%>
      
<!--       	<form name="registerForm" data-ng-submit="registersubmit()" role="form" method="post" class="form-horizontal" style="width: 100%; margin: 0 auto; border: 1px solid blue;"> -->
				
<!-- 				<div class="input-group input-group-lg"> -->
<!-- 				    <input type="text" class="form-control" data-ng-required="true" data-ng-model="rgid" id="rgid" name="rgid" placeholder="아이디"> -->
<!-- 				    <input type="password" class="form-control" data-ng-required="true" data-ng-model="rgpassword" id="rgpassword" name="rgpassword" placeholder="비밀번호"> -->
<!-- 				    <input type="password" class="form-control" data-ng-required="true" data-ng-model="ckpassword" id="ckpassword" name="ckpassword" placeholder="비밀번호 재확인"> -->
<!-- 				</div> -->

			
<!-- 			<div class="form-group"></div> -->
			
	

<!-- 				<div class="input-group input-group-lg"> -->
<!-- 					<input type="number" class="form-control" data-ng-required="true" data-ng-model="rgbirth" id="rgbirth" name="rgbirth" placeholder="생년월일(-없이)"> -->
					
<!-- 				</div> -->
				  
<!-- 					<div class="col-xs-12 text-left"> -->
<!-- 					성별 -->
<!-- 					  <div class="btn-group"> -->
<!-- 						<label for="rgman" class="btn btn-default"> -->
<!-- 							<input type="radio" name="rgsex" id="rgman" data-ng-model="rgsex" value="mail">남 -->
<!-- 						</label> -->
<!-- 						<label for="rgwomen" class="btn btn-default"> -->
<!-- 							 <input type="radio" name="rgsex" id="rgwomen" data-ng-model="rgsex" value="femail">여 -->
<!-- 						</label> -->
<!-- 					  </div> -->

<!-- 					</div> -->
					

<!-- 				<div class="col-xs-12" >지역 -->
<!-- 		      		<select class="form-control" id="rgarea" name="rgarea" data-ng-model="rgarea"> -->
<!-- 				        <option>서울</option> -->
<!-- 				        <option>인천</option> -->
<!-- 				        <option>강원</option> -->
<!-- 				        <option>부산</option> -->
<!-- 		      		</select> -->
<!-- 	      		</div> -->
	      		
<!-- 	      		<div class="input-group input-group-lg"> -->
<!-- 				<input type="text" class="form-control" data-ng-model="kakaoid"  id="kakaoid" name="rgkakaoid" placeholder="카카오톡ID"> -->
<!-- 				</div> -->


			    	

			
<!-- 		      <div class="form-group"> -->
<!-- 			    <div class="col-xs-offset-5 col-xs-7"> -->
<!-- 			    <button id="btnkk" type="submit" class="btn btn-primary">가입하기</button> -->

<!-- 			    </div> -->
<!-- 			  </div> -->
		        
<!--       	</form> -->











      	
      	
      	
      	
      	
      	
      	
      	
      	
</div>


