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
/*     display: block; */
    border: 1px solid;
    height: 50px;
    width: 50px;
    float: left;
    margin: 20px;
    padding: 10px;
}
  
	
</style>


<div id="questionmenu" class="container" style="font-size: 2em;">질문</div>


<div class="container-fluid" data-ng-swipe-left="countp()" data-ng-swipe-right="countm()" style="border: 1px solid red; width: 100%; height: 30em">


		<form data-ng-submit="question()" role="form" method="post" style="width: 300px; margin: 0 auto;">
			<div data-ng-repeat="question in ques">
				<div  data-ng-show="num == question.num">
					<div>질문:{{question.sel_1}}
						<div class="radio">
							<label class="btn" for="{{question.forname1}}">
							<input data-ng-click="cliecked()" data-ng-show="false" type="radio" name="{{question.bind}}" id="{{question.forname1}}" data-ng-model="question.value" value="{{question.sel_2}}">{{question.sel_2}}
							</label>
							<label class="btn" for="{{question.forname2}}">
							<input data-ng-click="cliecked()" data-ng-show="false" type="radio" name="{{question.bind}}" id="{{question.forname2}}" data-ng-model="question.value" value="{{question.sel_3}}">{{question.sel_3}}
							</label>
						</div>
					</div>
				</div>
			</div>
			
			<div  data-ng-show="num == 25">
			<button type="submit" class="btn btn-primary center-block">보내기</button>
			{{ques[0].value}}
			{{ques[1].value}}
			{{ques[2].value}}
			{{ques[3].value}}
			{{ques[4].value}}
			{{ques[5].value}}
			{{ques[6].value}}
			{{ques[7].value}}
			{{ques[8].value}}
			{{ques[9].value}}
			{{ques[10].value}}
			{{ques[11].value}}
			{{ques[12].value}}
			{{ques[13].value}}
			{{ques[14].value}}
			{{ques[15].value}}
			{{ques[16].value}}
			{{ques[17].value}}
			{{ques[18].value}}
			{{ques[19].value}}
			{{ques[20].value}}
			{{ques[21].value}}
			{{ques[22].value}}
			{{ques[23].value}}
			</div>
		</form>
		
		
<div data-ng-show="num == 26">
	<div data-ng-repeat="ah in oh">
		{{ah.userid}} {{ah.message}}<br>
		<span data-ng-click="requestKakaoId(ah.userid)" class="btn btn-default">링크신청</span>
	</div>
	<button data-ng-click="save()" class="btn btn-primary center-block">저장하기</button>
</div>



</div>

