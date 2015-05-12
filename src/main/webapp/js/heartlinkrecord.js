/*
 * contactController
 */

app.controller("heartlinkrecordController", function($scope, $http) {
//		alert("heartlinkrecordController");
	console.log("heartlinkrecordController start...");
	
	$http.get("../m/heartlinkrecord/record").success(function(result) {
		$scope.answers = result;
	});
	
	
	
});