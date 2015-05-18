/*
 * contactController
 */

app.controller("mysituationController", function($scope, $http, $location, $routeParams) {
//		alert("mysituationController");
	console.log("mysituationController start...");
//	$scope.$parent.pageClass = 'page-mysituation';
	
	$http.get("situation/request").success(function(requeststatus) {
	       
//		alert("성공");
		$scope.requests = requeststatus;
	       $scope.$apply();
	                
		 }).error(function() {
		    alert("server error...");
		 });
	
	
	
	
	
	$scope.requestProfile = function(e) {

		$http.post("situation/requestprofile", e).success(function(con) {

			$scope.requestpro = con;
		       $scope.$apply();
		       
		       $('#myModal').modal('show');
		                
			 }).error(function() {
			    alert("server error...");
		});
		
	};
	
	
	
	
	$scope.accept = function(e) {
		
		$http.post("note/accept", e).success(function(result) {
			
		       $location.path("/note");
		                
			 }).error(function() {
			    alert("server error..."); 
		});
	};
	
	
	
	
	
	
	$scope.reject = function(e) {
		
		$http.post("situation/reject", e).success(function(result) {
			
				alert("삭제성공");
     
			 }).error(function() {
			    alert("server error...");
		});
	};
	
	
	
	
	
	
});