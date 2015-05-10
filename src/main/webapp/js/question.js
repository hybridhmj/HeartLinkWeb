/*
 * questionController
 */

app.controller("questionController", function($scope, $http) {
//		alert("questionController");
	console.log("questionController start...");

	
	$scope.num=1;
	$scope.s1='s1';
	$scope.s2='s2';
	
	
	$scope.countp = function() {
		
		if($scope.num==24) {
			$scope.num = 1;
		}else {
			$scope.num = $scope.num + 1;
		}
// 		alert("countp");
	};
	
	
	$scope.countm = function() {
// 		alert("countm");
		if($scope.num==1) {
			$scope.num = 24;
		}else {
			$scope.num = $scope.num - 1;
		}
	};
	
	$scope.leftbtn = function() {
// 		alert("leftbtn");
		$scope.countm();
		
	};
	
	$scope.rightbtn = function() {
// 		alert("rigthbtn");
		$scope.countp();
	};
	
	$scope.question = function() {
		alert($scope.s1);
		alert($scope.s2);
	};
	
	$scope.aaa = function() {
		
		alert($scope.ss);
	};
	
	
	$http.get("q/question").success(function(questions) {
	   $scope.ques = questions;
	  }).error(function() {
	     alert("server error...");
	});

	
	
});