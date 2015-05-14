/*
 * contactController
 */

app.controller("profileController", function($scope, $http) {
//		alert("contactController");
	console.log("profileController start...");
	
	$http.get("../m/pro/profile").success(function(result) {
		$scope.re = result;
		
	});
	
	$http.get("../m/pro/condition").success(function(messasge) {
		$scope.msg = messasge;
		
	});
	
	
	
//	$http.get("../m/pro/profile").success(function(result) {
//		$scope.re = result;
//		
//		alert($scope.re.rgarea);
//	});
	
});