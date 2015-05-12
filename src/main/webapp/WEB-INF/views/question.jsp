<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>



<div class="container-fluid" data-ng-swipe-left="countp()"
	  data-ng-swipe-right="countm()" >

  			
  		<button type="button" data-ng-click="leftbtn()" class="btn btn-default carousel-control left">
		<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
		</button>



		<form data-ng-submit="question()" role="form" method="post" style="width: 300px; margin: 0 auto;">
			<div data-ng-repeat="question in ques">
				<div  data-ng-show="num == question.num">
					<div>질문:{{question.sel_1}}
						<div class="radio">
							<label for="rgman">
							<input type="radio" name="{{question.bind}}" id="rgman" data-ng-model="question.value" value="{{question.sel_2}}">{{question.sel_2}}
							</label>
							<label for="rgwomen">
							<input type="radio" name="{{question.bind}}" id="rgwomen" data-ng-model="question.value" value="{{question.sel_3}}">{{question.sel_3}}
							</label>
						</div>
					</div>
				</div>
			</div>
			<button data-ng-show="num == 24" type="submit" class="btn btn-primary center-block">보내기</button>
		</form>
		
		
		
	
		<button type="button" data-ng-click="rightbtn()" class="btn btn-default carousel-control right">
		<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
		</button>


</div>
