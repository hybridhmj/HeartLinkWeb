<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>




<style type="text/css">
	#topbar {
			background-color: rgb(119,211,206);
			color: white;
			margin-bottom: 15%;
			font-size: 2em;
			}
		
</style>


<div id="topbar" class="container">운명 현황</div>



<div class="container">
	<table class="table">
	<tr data-ng-repeat="request in requests">
		<td><a class="btn" data-ng-click="requestProfile(request.requestid)">{{request.requestid}}</a></td> <td><button data-ng-click="accept(request.requestid)" class="btn btn-default">수락</button><button data-ng-click="reject(request.requestid)" class="btn btn-default">거절</button></td>
	</tr>
	</table>
	
	
	
	
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-sm">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">{{requestpro.userid}}의 프로필</h4>
	      </div>
	      <div class="modal-body">
	       {{requestpro.message}}
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	
</div>