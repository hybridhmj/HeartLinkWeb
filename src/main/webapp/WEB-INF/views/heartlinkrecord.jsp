<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<style type="text/css">
	#topbar {
			background-color: rgb(119,211,206);
			color: white;
			font-size: 2em;
			}
			
	.background {
			background-color: rgb(245, 245, 245);
			padding-top: 3%;
			padding-bottom: 3%;
	}		
			
			
		
</style>

<div id="topbar" class="container">HearLink 이력</div>
<div class="container background">

	<div data-ng-repeat="match in matchs"><strong>★  1.{{match.answer1}}, 2.{{match.answer2}}, 3.{{match.answer3}}, 4.{{match.answer4}}</strong>&nbsp;&nbsp;&nbsp;&nbsp; <span class=" btn btn-default glyphicon glyphicon-zoom-in" data-ng-click="detail()">보기</span>
	
		<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
          	<h4 class="modal-title">대표 대답 목록</h4>
      	  </div>
	      <div class="modal-body">
	         1. {{match.answer1}}<br>
	         2. {{match.answer2}}<br>
	         3. {{match.answer3}}<br>
	         4. {{match.answer4}}<br>
	         5. {{match.answer5}}<br>
	         6. {{match.answer6}}<br>
	         7. {{match.answer7}}<br>
	         8. {{match.answer8}}<br>
	         9. {{match.answer9}}<br>
	         10. {{match.answer10}}<br>
	         11. {{match.answer11}}<br>
	         12. {{match.answer12}}<br>
	         13. {{match.answer13}}<br>
	         14. {{match.answer14}}<br>
	         15. {{match.answer15}}<br>
	         16. {{match.answer16}}<br>
	         17. {{match.answer17}}<br>
	         18. {{match.answer18}}<br>
	         19. {{match.answer19}}<br>
	         20. {{match.answer20}}<br>
	         21. {{match.answer21}}<br>
	         22. {{match.answer22}}<br>
	         23. {{match.answer23}}<br>
	         24. {{match.answer24}}
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	</div>
	<hr>

	
	
	<div class="row">
		<div data-ng-repeat="answer in answers">
			<div class="col-xs-12 contents pad"> 1.{{answer.answer1}}, 2.{{answer.answer2}}, 3.{{answer.answer3}}, 4.{{answer.answer4}}<div class="btn btn-default glyphicon glyphicon-hand-up" data-ng-click="change(answer.num)">대표올리기</div></div>
		</div>
	</div>
	
</div>