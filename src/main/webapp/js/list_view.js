/*
 * listViewController
 */
//http://stackoverflow.com/questions/11873570/angularjs-for-loop-with-numbers-ranges


app.controller("listViewController", function($scope, $http, $location) {
	
//	$scope.readCount = function() {
//		alert("click");
//	}
//	
	
	$scope.callPage=1;
	
	   $http.post("qna/callpage",{qnaTotalPage : $scope.callPage}).success(function(loginstatus) {
		   $scope.articles = loginstatus;
	          $scope.$apply();
		 }).error(function() {
		    alert("server error...");
		 });
	
	
   
   $http.get("qna/qnapage").success(function(loginstatus) {
       $scope.pages = loginstatus;
                $scope.$apply();
       
       
	 }).error(function() {
	    alert("server error...");
	 });
   
   
   $scope.nextPage = function(e) {

	   $scope.lastPageValue=e;
	   
	   $http.post("qna/qnapageplus",{qnaTotalPage : $scope.lastPageValue}).success(function(loginstatus) {
	       $scope.pages = loginstatus;
	          $scope.$apply();
		 }).error(function() {
		    alert("server error...");
		 });
	
   };
   
   
   $scope.backPage = function(e) {

	   $scope.lastPageValue=e;
	   
	   $http.post("qna/qnapageminus",{qnaTotalPage : $scope.lastPageValue}).success(function(loginstatus) {
	       $scope.pages = loginstatus;
	          $scope.$apply();
		 }).error(function() {
		    alert("server error...");
		 });
	
   };
   
   
   
   $scope.callPage = function(e) {
	
	  $scope.callpage=e;
	   
	   
	   $http.post("qna/callpage",{qnaTotalPage : $scope.callpage}).success(function(loginstatus) {
		   $scope.articles = loginstatus;
	          $scope.$apply();
		 }).error(function() {
		    alert("server error...");
		 });
	   
   };

   
   
});



