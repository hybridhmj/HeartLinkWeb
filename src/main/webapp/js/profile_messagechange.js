/*
 * contactController
 */

app.controller("profileMessageController", function($scope, $http, $location) {
//		alert("contactController");
	console.log("profile_messageChangeController start...");
	
	$scope.sendmessage= function() {

//		alert($scope.conditionMessage);
		
		$http.post("../m/pro/condition", $scope.conditionMessage).success(function(result) {
			
			if(result.status == true){
				console.log("프로필 수정 성공");
			}else{
				console.log("프로필 수정 실패 ");	
			}
			
			$location.path("/profile");
		});
		
	};

	
});