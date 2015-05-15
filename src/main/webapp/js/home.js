/*
 * homeController
 */

app.controller("homeController", function($scope, $http) {
//		alert("homeController");
	console.log("homeController start...");
//	$scope.$parent.pageClass = 'page-home';	
	
	$scope.homesubmit = function() {
	
		alert("home start");
	};
	
	
$scope.linknum=0;
$scope.questionnum=0;
$scope.ratenum=0;
$scope.differSex="true";
$scope.sameSex="";
$scope.sexModel="이성";
$scope.questionModel="a1_b1";
$scope.rateModel="50";


	
	
	$scope.linknumcountp = function() {
		
		if($scope.linknum==1) {
			$scope.linknum = 0;
			
		}else {
			$scope.linknum = $scope.linknum + 1;
		}
	};

	$scope.linknumcountm = function() {

		if($scope.linknum==0) {
			$scope.linknum = 1;
		}else {
			$scope.linknum = $scope.linknum - 1;
		}
	};
	
	
	
	
	
	$scope.questionnumcountp = function() {
		
		if($scope.questionnum==5) {
			$scope.questionnum = 0;
		}else {
			$scope.questionnum = $scope.questionnum + 1;
		}
	};

	$scope.questionnumcountm = function() {

		if($scope.questionnum==0) {
			$scope.questionnum = 5;
		}else {
			$scope.questionnum = $scope.questionnum - 1;
		}
	};
	
	
	
	
	$scope.ratenumcountp = function() {
		
		if($scope.ratenum==5) {
			$scope.ratenum = 0;
		}else {
			$scope.ratenum = $scope.ratenum + 1;
		}
	};

	$scope.ratenumcountm = function() {

		if($scope.ratenum==0) {
			$scope.ratenum = 5;
		}else {
			$scope.ratenum = $scope.ratenum - 1;
		}
	};
	
	
	
	
	
	
	$scope.linkleftbtn = function() {

		$scope.linknumcountm();
		
		if($scope.linknum==0){
			$scope.radioModel="이성";

		}else{
			$scope.radioModel="동성";
		}
		

		
	};
	
	$scope.linkrightbtn = function() {

		$scope.linknumcountp();
		
		if($scope.linknum==0){
			$scope.sexModel="이성";

		}else{
			$scope.sexModel="동성";
		}
		
		
	};
	
	
	
	
	
	
	
	$scope.questionleftbtn = function() {

		$scope.questionnumcountm();
		
		if($scope.questionnum==0){
			$scope.questionModel="a1_b1";
		}else if($scope.questionnum==1){
			$scope.questionModel="a1_b2";
		}else if($scope.questionnum==2){
			$scope.questionModel="a1_b3";
		}else if($scope.questionnum==3){
			$scope.questionModel="a2_b1";
		}else if($scope.questionnum==4){
			$scope.questionModel="a2_b2";
		}else {
			$scope.questionModel="a2_b3";
		}
		
		
		
	};
	
	$scope.questionrightbtn = function() {

		$scope.questionnumcountp();
		
		if($scope.questionnum==0){
			$scope.questionModel="a1_b1";
		}else if($scope.questionnum==1){
			$scope.questionModel="a1_b2";
		}else if($scope.questionnum==2){
			$scope.questionModel="a1_b3";
		}else if($scope.questionnum==3){
			$scope.questionModel="a2_b1";
		}else if($scope.questionnum==4){
			$scope.questionModel="a2_b2";
		}else {
			$scope.questionModel="a2_b3";
		}
		
	};
	

	
	$scope.rateleftbtn = function() {

		$scope.ratenumcountm();
		
		
		if($scope.ratenum==0){
			$scope.rateModel="50";
		}else if($scope.ratenum==1){
			$scope.rateModel="60";
		}else if($scope.ratenum==2){
			$scope.rateModel="70";
		}else if($scope.ratenum==3){
			$scope.rateModel="80";
		}else if($scope.ratenum==4){
			$scope.rateModel="90";
		}else {
			$scope.rateModel="100";
		}
		
	};

	$scope.raterightbtn = function() {

		$scope.ratenumcountp();
		
		if($scope.ratenum==0){
			$scope.rateModel="50";
		}else if($scope.ratenum==1){
			$scope.rateModel="60";
		}else if($scope.ratenum==2){
			$scope.rateModel="70";
		}else if($scope.ratenum==3){
			$scope.rateModel="80";
		}else if($scope.ratenum==4){
			$scope.rateModel="90";
		}else {
			$scope.rateModel="100";
		}
		
	};
	
	
	
	
	
	

	
	
	
	
});