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
//		alert($scope.rgid);
		alert($scope.rgsex);
//		$http.post("../m/login/login", {id : $scope.id, password : $scope.password}).success(function(loginstatus) {
//			if (loginstatus.status == true) {
//				alert("if==true들어옴");
//				$scope.$parent.login = loginstatus;
//				alert("parent.login 지나감");
//				$location.path("/home");
//				
//			}else {
//				alert("로그인 실패...");
//			}
//		}).error(function() {
//			alert("server error...");
//		});

	};
	
	

});