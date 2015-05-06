/*
 * loginController
 */

app.controller("loginController", function($scope, $http, $location) {
//		alert("loginController");
	console.log("loginController start...");
	$scope.$parent.pageClass = 'page-login';
	
	$scope.id = "";
	$scope.password = "";
	
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
});