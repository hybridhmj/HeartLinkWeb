/*
 * listViewController
 */

app.controller("listViewController", function($scope, $http, $location) {
	$scope.id="1";
	
   $http.get("qna/aaa").success(function(loginstatus) {
         $scope.articles = loginstatus;
                  $scope.$apply();
   }).error(function() {
      alert("server error...");
   });
   
   
   
   $scope.aaa = function() {
	   $scope.$parent.pageClass = 'page-about';
	$scope.parent.id=$scope.id;
   };
   
});