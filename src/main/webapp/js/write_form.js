/*
 * writeController
 */

app.controller("writeController", function($scope, $http, $location) {

	
	$scope.qnasubmit = function() {

//		alert($scope.contenta);

//		
//		$scope.newContent = $('#contenta').val().replace(/\n/g, '<br>');
		
		$http.post("qna/bbb", {writerName : $scope.writerName, password : $scope.password, title : $scope.title, content : $scope.contenta}).success(function(loginstatus) {
	         if (loginstatus.status == true) {
//				alert("성공했다")
	            $location.path("/list_view");
	            
	         }else {
	            alert("로그인 실패...");
	         }
	      }).error(function() {
	         alert("server error...");
	      });



	   };
	
});
