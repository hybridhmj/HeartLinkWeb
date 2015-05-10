<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>





        <h4>마음맺기 가입</h4>
      
      	<form data-ng-submit="registersubmit()" role="form" method="post">
	      	<div class="row form-group">
				  <div class="col-xs-12">
				  	<label for="rgid"></label>
				    <input type="text" class="form-control" data-ng-model="rgid" id="rgid" name="rgid" placeholder="아이디">
				  </div>
				  <div class="col-xs-12">
				  	<label for="rgpassword"></label>
				    <input type="password" class="form-control" data-ng-model="rgpassword" id="rgpassword" name="rgpassword" placeholder="비밀번호">
				  </div>
				  <div class="col-xs-12">
				  	<label for="ckpassword"></label>
				    <input type="password" class="form-control" id="ckpassword" placeholder="비밀번호 재확인">
				  </div>
				  <div class="col-xs-12">
				  	<label for="rgbirth"></label>
				    <input type="number" class="form-control" data-ng-model="rgbirth"  id="rgbirth" name="rgbirth" placeholder="생년월일(-없이)">
				  </div>
			</div>
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
			    	<input type="text" class="form-control" data-ng-model="kakaoid"  id="kakaoid" name="rgkakaoid" placeholder="카카오톡ID">
	      		</div>
			</div>
			
			
		        <button type="button" class="btn btn-default" data-dismiss="modal">나가기</button>
		        <button type="submit" class="btn btn-primary">가입하기</button>
		        

      	</form>



