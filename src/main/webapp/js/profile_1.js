/*
 * contactController
 */

app.controller("profile_1Controller", function($scope, $http, $location) {
//		alert("contactController");
	console.log("profile_1Controller start...");
	
	$scope.click = function(conditionMessage) {
		$scope.msg = conditionMessage;
		alert($scope.msg);
		
		$http.post("../m/pro1/profile_1", {message : $scope.msg}).success(function() {
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