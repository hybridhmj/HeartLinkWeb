/*
 * mappingController
 */

app.controller("mappingController", function($scope, $http) {
//		alert("mappingController");
	console.log("mappingController start...");

	$http.get("../m/match/mapping").success(function(result) {
		$scope.re = result;
	});
	
	
});