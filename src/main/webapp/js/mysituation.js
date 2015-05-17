/*
 * contactController
 */

app.controller("mysituationController", function($scope, $http, $location, $routeParams) {
//		alert("mysituationController");
	console.log("mysituationController start...");
//	$scope.$parent.pageClass = 'page-mysituation';
	
	$http.get("situation/request").success(function(requeststatus) {
	       
		alert("성공");
		$scope.requests = requeststatus;
	       $scope.$apply();
	                
	       
		 }).error(function() {
		    alert("server error...");
		 });
	
});