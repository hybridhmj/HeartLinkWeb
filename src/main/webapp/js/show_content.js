/*
 * showController
 */

app.controller("showController", function($scope, $http, $location, $routeParams) {
	
//	alert($routeParams.id);
	$scope.id = $routeParams.id;
	
	   $http.post("qna/ccc", {id : $scope.id}).success(function(article) {

		   $scope.artices = article;
		   
	   }).error(function() {
	      alert("server error...ToT(show_content.jsp)");
	   });

});
