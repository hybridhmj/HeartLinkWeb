<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style type="text/css">
.container {
	 background-color: #f0ad4e;
}

.container#c2{
	background-color: white;
}

h2 {
	text-align: center;
	text-color: #5bc0de;
}
.success {
	text-color: #5bc0de;
}
</style>

	<div class="container" id="c1">
	
	<h2>Profile</h2>
	<!-- <h3>profileCOntroller를 사용해서 개인정보를 불러올 곳입니다.</h3> -->
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
		<div class="container" id="c2">
			<p>{{msg.message}}</p>
			<a href="#/profile_messagechange" class="danger">상태 메시지 수정</a>
		</div>
		<p>
		</form>
	</div>

