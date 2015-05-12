<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>


<h2>여기는 프로필 jsp 입니다</h2>
<h3>profileCOntroller를 사용해서 개인정보를 불러올 곳입니다.</h3>
<div class="container">
	<table class="table">
		<thead>
			<td>아이디</td>
			<td>생년월일</td>
			<td>성별</td>	
			<td>지역</td>	
			<td>Kakao Id</td>		
		</thead>
		<tbody>
	      <tr class="success">
	        <td>{{re.rgid}}</td>
	        <td>{{re.rgbirth}}</td>
	        <td>{{re.rgsex}}</td>
	        <td>{{re.rgarea}}</td>
	        <td>{{re.rgkakaoid}}</td>
	      </tr>
	    </tbody>
	</table>
	
	<form class="form-inline">
		<div class="form-group" data-ng-controller="profileController">
			<p>{{msg.message}}</p>
			<a href="#/profile_1" class="danger">상태 메시지 수정</a>
	    </div>
  	</form>
</div>
