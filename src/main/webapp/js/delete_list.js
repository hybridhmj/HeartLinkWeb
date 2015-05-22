/*
 * deleteController
 */

app.controller("deleteController", function($scope, $http, $location, $routeParams) {
	
	$scope.id = $routeParams.id;
//	alert($scope.id);

	$scope.deleteID = function(password) {
//		alert(password);
	
		$http.post("qna/ddd", {id : $scope.id, password : password}).success(function(correct) {

			$scope.correct = correct;
			$scope.message = "";
			
			if($scope.correct == true) {
//				alert("true = >" + correct);
				alert($scope.id + "번 글이 삭제되었습니다 :)")
				$location.path("/list_view");
			} else {
//				alert("false = >" + correct);
//				alert("비밀번호가 틀렸습니다. 확인하세요 ;(")
				$scope.message = "비밀번호가 틀렸습니다. 확인하세요 ;(";
			}

		   }).error(function() {
		      alert("server error...ToT(delete_list.jsp)");
		   });
	};
	
	
});