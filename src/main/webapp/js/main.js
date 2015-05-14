/*
 * mainController
 */

var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute", "ngTouch", "ui.bootstrap"]);
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
        
        // profile_1 page
        .when('/profile_messagechange', {
            templateUrl: 'profile_messagechange',
            controller: 'profileMessageController'
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
        
        // list_view page
        .when('/list_view', {
            templateUrl: 'list_view',
            controller: 'listViewController'
        })
        
        // write_form page
        .when('/write_form', {
            templateUrl: 'write_form',
            controller: 'writeController'
        })
        
        // show_content page
        .when('/show_content', {
            templateUrl: 'show_content',
            controller: 'showController'
        })
        
        // write_form page
        .when('/register', {
            templateUrl: 'register',
            controller: 'registerController'
        })
        
        // write_form page
        .when('/question', {
            templateUrl: 'question',
            controller: 'questionController'
        })
        
        // delete_list page
        .when('/delete_list', {
            templateUrl: 'delete_list',
            controller: 'deleteController'
        })
        
        // update_list page
        .when('/update_list', {
            templateUrl: 'update_list',
            controller: 'updatesController'
        })
        
        // update_form page
        .when('/update_form', {
            templateUrl: 'update_form',
            controller: 'updateFormController'
        })
        
        .when('/mapping', {
            templateUrl: 'mapping',
            controller: 'mappingController'
        })
        
        .when('/examjsp', {
            templateUrl: 'examjsp',
            controller: 'examjspController'
        })
    
	 	// otherwise page
    	.otherwise({redirectTo: '/login'});

});

app.controller("mainController", function($scope, $http, $rootScope, $templateCache, $location) {
//	alert("mainController");
	
	$scope.contentID=""; 
	
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
