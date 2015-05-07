/*
 * loginController
 */

app.controller("loginController", function($scope, $http, $location) {
//		alert("loginController");
	console.log("loginController start...");
	$scope.$parent.pageClass = 'page-login';
	
	$scope.id = "";
	$scope.password = "";
	
	$scope.rgid = "";
	$scope.rgpassword = "";
	$scope.rgsex = "";
	$scope.rgarea = "";
	
	$scope.submit = function() {
		console.log("login submit click...");
		$http.post("../m/login/login", {id : $scope.id, password : $scope.password}).success(function(loginstatus) {
			if (loginstatus.status == true) {

				$scope.$parent.login = loginstatus;

				$location.path("/home");
				
			}else {
				alert("로그인 실패...");
			}
		}).error(function() {
			alert("server error...");
		});

	};
	
	
	
	$scope.registersubmit = function() {
		console.log("login submit click...");
		$http.post("../m/login/register", {rgid : $scope.rgid, rgpassword : $scope.rgpassword, rgbirth : $scope.rgbirth, rgsex : $scope.rgsex, rgarea : $scope.rgarea ,kakaoid : $scope.kakaoid}).success(function(memberstatus) {
			if (memberstatus.status == true) {
				alert("if==true들어옴");

				alert("parent.login 지나감");
				$location.path("/home");
				
			}else {
				alert("로그인 실패...");
			}
		}).error(function() {
			alert("server error...");
		});

		
	};
	
	

});