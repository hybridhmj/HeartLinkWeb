<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style>

	#homebar {
		font-size: x-large;
		background-color: rgb(119,211,206);
		color: white;
		margin-bottom: 15%;
	}


</style>

<div id="homebar" class="container" style="font-size: 2em;">Heart Link Home</div>

<div class="container text-center" style="font-size: 150%;">



<form name="settingForm" data-ng-model="settingForm" data-ng-submit="settingSubmit()" role="form" method="post" class="form-horizontal">
	<span style="color: red;">♥</span> <span>링크대상</span>
		
		<span class="btn glyphicon glyphicon-triangle-left" data-ng-click="linkleftbtn()" aria-hidden="true" style="color: gray;"></span>

		<span data-ng-show="linknum == 0">	
		<span style="color: red;">이성</span>
				 <label data-ng-show="false" class="btn btn-primary" ng-model="sexModel" btn-radio="'이성'"></label>
		</span>
		
		<span data-ng-show="linknum == 1">	
		<span style="color: red;">동성</span>
				 <label data-ng-show="false" class="btn btn-primary" ng-model="sexModel" btn-radio="'동성'"></label>
		</span>
	
	
		<span class="btn glyphicon glyphicon-triangle-right" data-ng-click="linkrightbtn()" aria-hidden="true" style="color: gray;"></span><br>
	

	
	
	
	
	
	
	
	
	<span style="color: red;">♥</span> <span>질문유형</span>
		
		<span class="btn glyphicon glyphicon-triangle-left" data-ng-click="questionleftbtn()" aria-hidden="true" style="color: gray;"></span>
		
		<span data-ng-show="questionnum == 0">	
		<span style="color: red;">&nbsp;A형</span>	
		   <label data-ng-show="false" class="btn btn-primary" ng-model="questionModel" btn-radio="'A형'"></label>
		</span>
		
		<span data-ng-show="questionnum == 1">	
		<span style="color: red;">B형</span>
		   <label data-ng-show="false" class="btn btn-primary" ng-model="questionModel" btn-radio="'B형'"></label>
		</span>
		
		<span data-ng-show="questionnum == 2">	
		<span style="color: red;">C형</span>
		   <label data-ng-show="false" class="btn btn-primary" ng-model="questionModel" btn-radio="'C형'"></label>
		</span>
		
		<span data-ng-show="questionnum == 3">	
		<span style="color: red;">D형</span>
		   <label data-ng-show="false" class="btn btn-primary" ng-model="questionModel" btn-radio="'D형'"></label>
		</span>
		
		<span data-ng-show="questionnum == 4">	
		<span style="color: red;">E형</span>
		   <label data-ng-show="false" class="btn btn-primary" ng-model="questionModel" btn-radio="'E형'"></label>
		</span>
		
		<span data-ng-show="questionnum == 5">	
		<span style="color: red;">F형</span>
		   <label data-ng-show="false" class="btn btn-primary" ng-model="questionModel" btn-radio="'F형'"></label>
		</span>
	
		<span class="btn glyphicon glyphicon-triangle-right" data-ng-click="questionrightbtn()" aria-hidden="true" style="color: gray;"></span><br>
	

	
	
	
	
	
	
	
	
	
	
	<span style="color: red;">♥</span> <span>적중률&nbsp;&nbsp;&nbsp;</span>
		
		<span class="btn glyphicon glyphicon-triangle-left" data-ng-click="rateleftbtn()" aria-hidden="true" style="color: gray;"></span>
		
		<span data-ng-show="ratenum == 0">	
		<span style="color: red;">50%</span>
		  <label data-ng-show="false" class="btn btn-primary" ng-model="rateModel" btn-radio="'50'"></label>
		</span>
		
		<span data-ng-show="ratenum == 1">	
		<span style="color: red;">60%</span>
		  <label data-ng-show="false" class="btn btn-primary" ng-model="rateModel" btn-radio="'60'"></label>
		</span>
		
		<span data-ng-show="ratenum == 2">	
		<span style="color: red;">70%</span>
		  <label data-ng-show="false" class="btn btn-primary" ng-model="rateModel" btn-radio="'70'"></label>
		</span>
		
		<span data-ng-show="ratenum == 3">	
		<span style="color: red;">80%</span>
		  <label data-ng-show="false" class="btn btn-primary" ng-model="rateModel" btn-radio="'80'"></label>
		</span>
		
		<span data-ng-show="ratenum == 4">	
		<span style="color: red;">90%</span>
		  <label data-ng-show="false" class="btn btn-primary" ng-model="rateModel" btn-radio="'90'"></label>
		</span>
		
		<span data-ng-show="ratenum == 5">	
		<span style="color: red;">100%</span>
		  <label data-ng-show="false" class="btn btn-primary" ng-model="rateModel" btn-radio="'100'"></label>
		</span>
	
		<span class="btn glyphicon glyphicon-triangle-right" data-ng-click="raterightbtn()" aria-hidden="true" style="color: gray;"></span><br>



		<br><br><br><br><br>
			<div class="row text-center form-group">
			  <div class="col-xs-4"></div>
			  <div class="col-xs-4"><a href="#/question/{{sexModel}}/{{questionModel}}/{{rateModel}}" class="btn btn-default"><c:url var="image" value="/image"/> 
     <img src="${image}/go.jpg" class="img-responsive center-block" alt="Responsive image" style="width: 50px;height: 50px;"></a></div>
			  <div class="col-xs-4"></div>
			</div>


</form>


</div>