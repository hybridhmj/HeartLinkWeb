/*
 * questionController
 */

app.controller("questionController", function($scope, $http, $location) {
//		alert("questionController");
	console.log("questionController start...");

	$scope.num=1;
	$scope.s1='';
	$scope.s2='';
	
	
	$scope.countp = function() {
		
		if($scope.num==24) {
			$scope.num = 1;
		}else {
			$scope.num = $scope.num + 1;
		}

	};
	
	$scope.countm = function() {
		if($scope.num==1) {
			$scope.num = 24;
		}else {
			$scope.num = $scope.num - 1;
		}
	};
	
	$scope.leftbtn = function() {
		$scope.countm();
		
	};
	
	$scope.rightbtn = function() {
		$scope.countp();
	};

	
	$http.get("q/question").success(function(questions) {
	   $scope.ques = questions;
	  }).error(function() {
	     alert("server error...");
	});
	
	$scope.question = function() {
		$http.post("../m/q/answer", {
			answer1 : $scope.ques[0].value,
			answer2 : $scope.ques[1].value,
			answer3 : $scope.ques[2].value,
			answer4 : $scope.ques[3].value,
			answer5 : $scope.ques[4].value,
			answer6 : $scope.ques[5].value,
			answer7 : $scope.ques[6].value,
			answer8 : $scope.ques[7].value,
			answer9 : $scope.ques[8].value,
			answer10 : $scope.ques[9].value,
			answer11 : $scope.ques[10].value,
			answer12 : $scope.ques[11].value,
			answer13 : $scope.ques[12].value,
			answer14 : $scope.ques[13].value,
			answer15 : $scope.ques[14].value,
			answer16 : $scope.ques[15].value,
			answer17 : $scope.ques[16].value,
			answer18 : $scope.ques[17].value,
			answer19 : $scope.ques[18].value,
			answer20 : $scope.ques[19].value,
			answer21 : $scope.ques[20].value,
			answer22 : $scope.ques[21].value,
			answer23 : $scope.ques[22].value,
			answer24 : $scope.ques[23].value}
	
		).success(function(memberstatus) {
			if (memberstatus.status == true) {
				alert("if==true들어옴");
				$location.path("/mapping");
				
			}else {
				alert("로그인 실패...");
			}
		}).error(function() {
			alert("server error...");
		});
		
	};
	
	
});