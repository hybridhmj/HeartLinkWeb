<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style type="text/css">
/* .container { */
/* 	 background-color: #f0ad4e; */
/* 	 border: 4px outset gray; */
/* } */

/* .container#c2{ */
/* 	background-color: white; */
/* } */

/* h2 { */
/* 	text-align: center; */
/* } */

/* .hh2 { */
/* 	text-align: center; */
/* 	color: gray; */
/* } */
/* .success { */
/* 	text-color: #5bc0de; */
/* } */

/* table, td, th { */
/*     border: 4px outset gray; */
/* } */

/* th { */
/*     background-color: green; */
/*     color: white; */
/* } */

</style>

	<div class="container" id="c1">
	
	<h2>Profile</h2>
	<!-- <h3>profileCOntroller를 사용해서 개인정보를 불러올 곳입니다.</h3> -->
		<table class="table">
			<thead>
				<tr>
					<td>아이디</td>
					<td>생년월일</td>
					<td>성별</td>	
					<td>지역</td>	
				</tr>
			</thead>
			<tbody class="hh2">
			    <tr class="success">
				    <td>{{re.rgid}}</td>
				    <td>{{re.rgbirth}}</td>
				    <td>{{re.rgsex}}</td>
				    <td>{{re.rgarea}}</td>
			    </tr>
			    <tr>
			    	<td>상태 메시지</td>
			    	<td colspan="2">{{msg.message}}</td>
			    	<td><form class="form-inline"><a href="#/profile_messagechange" class="danger">상태 메시지 수정</a></form></td>
			    </tr>
		    </tbody>
		</table>

		
	</div>

