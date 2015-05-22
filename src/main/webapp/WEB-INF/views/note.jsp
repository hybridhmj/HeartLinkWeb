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


<div id="topbar" class="container">★내 편지함</div>

<div class="container background">
	
	<table class="table">
	<tr data-ng-repeat = "note in notes">
		<td>{{note.message}}</td> <td><button data-ng-click="msgdelete(note.num)" class="btn btn-default">삭제</button></td>
	</tr>
	</table>
	
</div>