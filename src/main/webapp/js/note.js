/*
 * aboutController
 */

app.controller("noteController", function($scope, $http) {
//		alert("aboutController");
	console.log("noteController start...");
//	alert("note");
//	$scope.$parent.pageClass = 'page-about';
	
	
	$http.get("note/message").success(function(notes) {
	       
		alert("성공");
		$scope.notes = notes;
	       $scope.$apply();
	                
		 }).error(function() {
		    alert("server error...");
		 });
	
	
});