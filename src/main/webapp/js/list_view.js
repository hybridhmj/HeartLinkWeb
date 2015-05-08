/*
 * listViewController
 */

app.controller("listViewController", function($scope, $http, $location) {

	
   $http.get("qna/aaa").success(function(loginstatus) {
         $scope.articles = loginstatus;
                  $scope.$apply();
   }).error(function() {
      alert("server error...");
   });
   
   
   $scope.showId = function(id) {
//	   alert("id = " + id);

	   $scope.$parent.contentID = id;
	   
	   $location.path("/show_content");
   };
      
});



