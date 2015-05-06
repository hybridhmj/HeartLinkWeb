/*
 * mainController
 */

var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute", "ngTouch"]);
app.config(function($routeProvider) {

    $routeProvider
        // home page
        .when('/home', {
            templateUrl: 'home',
            controller: 'homeController'
        })

        // about page
        .when('/about', {
            templateUrl: 'about',
            controller: 'aboutController'
        })

        // contact page
        .when('/contact', {
            templateUrl: 'contact',
            controller: 'contactController'
        })
        
        // signup page
        .when('/signup', {
            templateUrl: 'signup',
            controller: 'signupController'
        })
        
        // login page
        .when('/login', {
            templateUrl: 'login',
            controller: 'loginController'
        })
        
        // profile page
        .when('/profile', {
            templateUrl: 'profile',
            controller: 'profileController'
        })
        
        // mysituation page
        .when('/mysituation', {
            templateUrl: 'mysituation',
            controller: 'mysituationController'
        })
        
        // heartlinkrecord page
        .when('/heartlinkrecord', {
            templateUrl: 'heartlinkrecord',
            controller: 'heartlinkrecordController'
        })
    
	 	// otherwise page
    	.otherwise({redirectTo: '/login'});

});

app.controller("mainController", function($scope, $http, $rootScope, $templateCache, $location) {
	alert("mainController");
	
    $rootScope.$on('$routeChangeStart', function(event, next, current) {
    		if (typeof current != 'undefined') {
        		$templateCache.removeAll();
           		console.log("current.templateUrl=" + current.templateUrl);
    		}
    });
    
    $scope.swipeLeft = function() {
    	console.log("swipeleft = " + $location.path());
    };
    
    $scope.swipeRight = function() {
    	console.log("swipeRight = " + $location.path());
    };
    
    /*
	 * 로그아웃 상태 및 유저정보
	 */
    $scope.login = {
    		status : false
    }
    
    /*
	 * 로그아웃 처리
	 */
    $scope.logout = function() {
    	console.log("logout...");
    	
    	$http.get("../m/login/logout").success(function(loginstatus) {
			console.log(loginstatus);
			$scope.login = loginstatus;
		}).error(function() {
			alert("server error...");
		});
    	
		$location.path("/login");
	};
	
	/*
	 * 로그인 유무 체크
	 */
	$http.get("../m/login/logincheck").success(function(loginstatus) {
			console.log("로그인 유무 체크 = " + JSON.stringify(loginstatus));
			$scope.login = loginstatus;
	}).error(function() {
		alert("server error...");
	});
});
