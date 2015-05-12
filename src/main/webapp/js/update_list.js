
app.controller("updatesController", function($scope, $http, $location) {
	
	$scope.id = $scope.$parent.contentID;
//	alert($scope.id);

	$scope.updateID = function(password) {
//		alert(password);
	
		$http.post("qna/eee", {id : $scope.id, password : password}).success(function(correct) {

			$scope.correct = correct;
			
			if($scope.correct == true) {
//				alert("true = >" + correct);
				alert($scope.id + "번 글을 수정하겠습니다 :)")
				$location.path("/update_form");
			} else {
//				alert("false = >" + correct);
				alert("비밀번호가 틀렸습니다. 확인하세요 ;(")
			}

		   }).error(function() {
		      alert("server error...");
		   });
	};
	
});