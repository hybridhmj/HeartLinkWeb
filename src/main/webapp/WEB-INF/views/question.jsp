<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style>

		#questionmenu {
		font-size: x-large;
		background-color: rgb(119,211,206);
		color: white;
		margin-bottom: 15%;
	}

.btn {
    display: block;
    border: 1px solid;
    height: 200px;
    width: 100px;
    float: left;
    margin: 20px;
    padding: 10px;
}
  
	
</style>

	<div>
    <div class='a' data-on-touch="clickedOrTouched">Touch or click me</div>
    <div class='btn' data-ng-click="cliecked()">Touch or click me</div>
    </div>

    

<div id="questionmenu" class="container text-center" style="font-size: 2em;">질문</div>


<div class="container-fluid" data-ng-swipe-left="countp()" data-ng-swipe-right="countm()">


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

