<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/taglib.jspf" %>

<style type="text/css">
	#topbar {
			background-color: rgb(119,211,206);
			color: white;
			font-size: 2em;
			}
	#background {
			background-color: rgb(245, 245, 245);
			padding-top: 15%;
			padding-bottom: 20%;
	}		
			
	.img-responsive,
	.thumbnail > img,
	.thumbnail a > img,
	.carousel-inner > .item > img,
	.carousel-inner > .item > a > img {
	  display: block;
	  max-width: 25%;
	  max-height: 25%;
	}
	
	.contents {
	border: 1px solid rgb(245,245,245); 
	height: 50px; 
	background-color: white;
	font-size: 20px;
	font-weight: lighter;
	}
	
	.contents2 {
	height: 30px; 
	background-color: white;
	font-size: 20px;
	font-weight: lighter;
	}
	
	.contents3 {
	height: 60px; 
	background-color: white;
	font-size: 20px;
	font-weight: lighter;
	}
	
	
	.pad {
	padding-bottom: 3px;
	}
	
	.btn {
	width: 100%;
	height: 50px;
	margin: 0;
	padding: 0;
	}
			
			
			
			
</style>


<div id="topbar" class="container">프로필</div>






	<div class="container" id="background">
	<img src="pro/download/picture" alt="나와라" class="img-responsive img-rounded center-block" alt="Responsive image"/>
			
			<form action="pro/upload/picture" method="post" enctype="multipart/form-data">
				파일 : <input type="file" name="f"/><input type="submit" value="사진 첨부"/>		
			</form>


	
	<hr>
		
		
		
		<div class="row" style="padding-bottom: 10px;">
		  <div class="col-xs-12 contents pad"><div style="padding-top: 10px;">{{re.rgid}}</div></div>
		  <div class="col-xs-12 contents pad"><div style="padding-top: 10px;">{{re.rgbirth}}</div></div>
		  <div class="col-xs-12 contents pad"><div style="padding-top: 10px;">{{re.rgsex}}</div></div>
		  <div class="col-xs-12 contents pad"><div style="padding-top: 10px;">{{re.rgarea}}</div></div>
		</div>
		
		<div class="row" style="padding-top: 1%;">
			<div class="col-xs-12 contents2">상태 메시지</div>
			<div class="col-xs-12 contents3">{{msg.message}}
			<a href="#/profile_messagechange" class="danger">수정<span class="glyphicon glyphicon-menu-right"></span></a></div>
		</div>

		
	</div>

