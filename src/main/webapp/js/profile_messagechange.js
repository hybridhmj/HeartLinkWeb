/*
 * contactController
 */

app.controller("profileMessageController", function($scope, $http, $location) {
//		alert("contactController");
	console.log("profile_messageChangeController start...");
	
	$scope.sendmessage= function() {

		alert($scope.conditionMessage);
		
		$http.post("../m/pro/condition", {message : $scope.conditionMessage}).success(function() {
			alert("안녕");
			$location.path("/profile");
		});
		
	};
	
//	$http.get("../m/pro/profile").success(function(result) {
//		$scope.re = result;
//		
//		alert($scope.re.rgarea);
//	});
	
});