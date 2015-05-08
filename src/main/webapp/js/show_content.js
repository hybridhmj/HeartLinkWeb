/*
 * showController
 */

app.controller("showController", function($scope, $http, $location) {
	
	$scope.id = $scope.$parent.contentID;
	
	   $http.post("qna/ccc", {id : $scope.id}).success(function(article) {

		   $scope.artices = article;
		   
//		   alert(article.content);
//		   $scope.ccc = article.content;

	   }).error(function() {
	      alert("server error...");
	   });

});

