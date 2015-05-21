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


<div id="topbar" class="container">프로필</div>




	<div class="container">
			사진
			<hr>
			<form action="pro/upload/picture" method="post" enctype="multipart/form-data">
				파일 : <input type="file" name="f"><br/>
				<input type="submit" value="사진 올리기"/>			
			</form>
		</div>
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
		
		<img src="pro/download/picture" alt="나와라" class="img-circle" width="256" height="256"/>
		
		
		
	</div>

