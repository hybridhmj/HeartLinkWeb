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
      
});