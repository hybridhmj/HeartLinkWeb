/*
 * contactController
 */

app.controller("heartlinkrecordController", function($scope, $http, $location, $templateCache, $route) {
//		alert("heartlinkrecordController");
	console.log("heartlinkrecordController start...");
	
	$http.get("../m/heartlinkrecord/record").success(function(result) {
		$scope.answers = result;
	});
	
	$http.get("../m/heartlinkrecord/match").success(function(result) {
		$scope.matchs = result;
	});
	
	$scope.change = function(e) {

		$http.post("../m/heartlinkrecord/changematch", e).success(function(result) {
			$route.reload();
		});
	};
	
});