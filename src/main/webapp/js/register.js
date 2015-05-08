/*
 * loginController
 */

app.controller("registerController", function($scope, $http, $location) {
//		alert("registerController");
	console.log("registerController start...");

	
	$scope.rgid = "";
	$scope.rgpassword = "";
	$scope.rgsex = "";
	$scope.rgarea = "";
	
	$scope.registersubmit = function() {
		console.log("login submit click...");
		$http.post("../m/login/register", {rgid : $scope.rgid, rgpassword : $scope.rgpassword, rgbirth : $scope.rgbirth, rgsex : $scope.rgsex, rgarea : $scope.rgarea ,kakaoid : $scope.kakaoid}).success(function(memberstatus) {
			if (memberstatus.status == true) {
				alert("if==true들어옴");

				$location.path("/login");
				
			}else {
				alert("로그인 실패...");
			}
		}).error(function() {
			alert("server error...");
		});

		
	};
	
	

});