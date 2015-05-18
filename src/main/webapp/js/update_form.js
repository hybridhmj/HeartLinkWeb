
app.controller("updateFormController", function($scope, $http, $location, $routeParams) {
	
	$scope.id = $routeParams.id;

//	alert($scope.id);
	
	   $http.post("qna/ccc", {id : $scope.id}).success(function(article) {

		   $scope.artices = article;
		   
		   $scope.newPassword = $scope.artices.password;
		   $scope.newTitle = $scope.artices.title;
		   $scope.newWriterName = $scope.artices.writerName;
		   $scope.newContent = $scope.artices.content;
		   
	   }).error(function() {
	      alert("server error...");
	   });
	   
	   	
		$scope.updateForm = function() {
			$http.post("qna/fff", {id : $scope.id, password : $scope.newPassword, title : $scope.newTitle,
									writerName : $scope.newWriterName, content : $scope.newContent}).success(function(correct) {

										if(correct == true) {
											alert($scope.id + "번 글이 수정되었습니다 :)")
											$location.path("/list_view");
										} else {
											alert("수정 실패 ;(")
										}
				
			}).error(function() {
				alert("server error...");
			});
		};
	
});