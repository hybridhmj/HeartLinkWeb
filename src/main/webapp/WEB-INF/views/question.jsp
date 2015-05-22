<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style type="text/css">
	#topbar {
			background-color: rgb(119,211,206);
			color: white;
			font-size: 2em;
			}


.btn2 {

	height: 40%;
    width: 100%;
    text-align: center;
}
  
  
  
  .img-responsive,
	.thumbnail > img,
	.thumbnail a > img,
	.carousel-inner > .item > img,
	.carousel-inner > .item > a > img {
	  display: inline;
	  max-width: 40%;
	  height: auto;
	}
	
</style>


<div class="container-fluid">
	<div id="topbar" style="font-size: 2em;">Q 질문</div>
	
	
	<div data-ng-swipe-left="countp()" data-ng-swipe-right="countm()" style="width: 100%; height: 30em">
	
	
			<form data-ng-submit="question()" role="form" method="post" style="width: 100%; margin: 0 auto;">
				<div data-ng-repeat="question in ques">
					<div  data-ng-show="num == question.num">
						<div class="text-center" style="border:3px solid red; margin: 0 auto; width: 93%; height: 5em; font-size: 26px;"><br>{{question.sel_1}}</div>
							
							<div class="radio">
							
								<div style="border-right:1px solid gray; display: inline; float: left; width: 50%;">
									<label class="btn2" style="font-size: 2em; color: gray;" for="{{question.forname1}}">
									<input data-ng-click="cliecked()" data-ng-show="false" type="radio" name="{{question.bind}}" id="{{question.forname1}}" data-ng-model="question.value" value="{{question.sel_2}}"><br><br><br>{{question.sel_2}}<br><br><br><br>
									</label>
								</div>
								<div style="border-left:1px solid gray; display: inline; float: right; width: 50%;">
									<label class="btn2" style="font-size: 2em; color: gray;" for="{{question.forname2}}">
									<input data-ng-click="cliecked()" data-ng-show="false" type="radio" name="{{question.bind}}" id="{{question.forname2}}" data-ng-model="question.value" value="{{question.sel_3}}"><br><br><br>{{question.sel_3}}<br><br><br><br>
									</label>
								</div>
								
							</div>
					</div>
				</div>
				
				
				
				
				
			
				
				<div  data-ng-show="num == 25" class="text-center">
					<div>
					{{ques[0].sel_1}} = {{ques[0].value}}<br>
					{{ques[1].sel_1}} = {{ques[1].value}}<br>
					{{ques[2].sel_1}} = {{ques[2].value}}<br>
					{{ques[3].sel_1}} = {{ques[3].value}}<br>
					{{ques[4].sel_1}} = {{ques[4].value}}<br>
					{{ques[5].sel_1}} = {{ques[5].value}}<br>
					{{ques[6].sel_1}} = {{ques[6].value}}<br>
					{{ques[7].sel_1}} = {{ques[7].value}}<br>
					{{ques[8].sel_1}} = {{ques[8].value}}<br>
					{{ques[9].sel_1}} = {{ques[9].value}}<br>
					{{ques[10].sel_1}} = {{ques[10].value}}<br>
					{{ques[11].sel_1}} = {{ques[11].value}}<br>
					{{ques[12].sel_1}} = {{ques[12].value}}<br>
					{{ques[13].sel_1}} = {{ques[13].value}}<br>
					{{ques[14].sel_1}} = {{ques[14].value}}<br>
					{{ques[15].sel_1}} = {{ques[15].value}}<br>
					{{ques[16].sel_1}} = {{ques[16].value}}<br>
					{{ques[17].sel_1}} = {{ques[17].value}}<br>
					{{ques[18].sel_1}} = {{ques[18].value}}<br>
					{{ques[19].sel_1}} = {{ques[19].value}}<br>
					{{ques[20].sel_1}} = {{ques[20].value}}<br>
					{{ques[21].sel_1}} = {{ques[21].value}}<br>
					{{ques[22].sel_1}} = {{ques[22].value}}<br>
					{{ques[23].sel_1}} = {{ques[23].value}}<br>
					</div>
				<c:url var="image" value="/image"/> 
    			 <img src="${image}/target.jpg" class="img-responsive center-block" alt="Responsive image" style="display: inline;"><br>
    			 <button type="submit" class="btn btn-default" style="margin-bottom: 60px;">Heart Link</button>
				</div>
			</form>
	
			
	
			<div data-ng-show="num == 26">
				<table class="table">
				<thead class="text-center"><tr><td>아이뒤</td><td>상태 메시지</td><td>신청</td></tr></thead>
				<tr data-ng-repeat="ah in oh" class="text-center">
					<td>{{ah.userid}}</td> <td>{{ah.message}}</td>
					<td><span data-ng-click="requestKakaoId(ah.userid)" class="btn btn-default">링크신청</span></td>
				</tr>
				</table>
				<button data-ng-click="save()" class="btn btn-primary center-block" style="bottom: 20px;">저장하기</button>
			</div>
			
			
			
			
			
			<div class="row">
				 <div class="col-xs-3"></div>
				 <div class="col-xs-3"></div>
				 <div class="col-xs-3"></div>
				 <div class="col-xs-3 text-center"><label class="btn" style="color: gray; font-size: 20px;" for="back">
				<input data-ng-click="countm()" data-ng-show="false" name="back" id="back">뒤로
				</label></div>
				
			</div>
	
	</div>	
	
	
	
	
	
	
	<div class="modal fade" id="rqkakao" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">{{requestpro.userid}}의 프로필</h4>
	      </div>
	      <div class="modal-body">
	       요청에 성공하였습니다.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
				

</div>

