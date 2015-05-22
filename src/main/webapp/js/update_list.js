
app.controller("updatesController", function($scope, $http, $location, $routeParams) {
	
	$scope.id = $routeParams.id;
//	alert($scope.id);

	$scope.updateID = function(password) {
//		alert(password);
	
		$http.post("qna/eee", {id : $scope.id, password : password}).success(function(correct) {

			$scope.correct = correct;
			$scope.message = "";
			
			if($scope.correct == true) {
//				alert("true = >" + correct);
//				$scope.message = $scope.id + "번 글을 수정하겠습니다 :)";
				alert($scope.id + "번 글을 수정하겠습니다 :)")
				$location.path("/update_form/"+$scope.id);
			} else {
//				alert("false = >" + correct);
//				alert("비밀번호가 틀렸습니다. 확인하세요 ;(")
				$scope.message = "비밀번호가 틀렸습니다. 확인하세요 ;(";
			}

		   }).error(function() {
		      alert("server error...ToT(update_list.jsp)");
		   });
	};
	

	
});