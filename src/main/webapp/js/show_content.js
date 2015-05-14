/*
 * showController
 */

app.controller("showController", function($scope, $http, $location) {
	
//	$scope.id = $scope.$parent.contentID;
//	alert($scope.$parent.contentID);
	
	   $http.post("qna/ccc", {id : $scope.$parent.contentID}).success(function(article) {

		   $scope.artices = article;
		   
//		   alert(article.content);
//		   $scope.ccc = article.content;

	   }).error(function() {
	      alert("server error...ToT(show_content.jsp)");
	   });

});

