/*
 * mainController
 */

var app = angular.module("myApp", ["ngSanitize", "ngAnimate", "ngRoute", "ngTouch", 'ui.bootstrap']);

app.directive('onTouch', function() {
	  return {
	        link: function(scope, elm, attrs) {
	            var ontouchFn = scope.$eval(attrs.onTouch);
	            
	            elm.bind('touchstart', function(evt) {
	                scope.$apply(function() {
	                    ontouchFn.call(scope, evt.which);
	                });
	            });

//	            elm.bind('click', function(evt){
//	                    scope.$apply(function() {
//	                        ontouchFn.call(scope, evt.which);
//	                    });
//	            });
	        }
	    };
});





app.config(function($routeProvider) {
	
    $routeProvider
        // home page
        .when('/home', {
            templateUrl: 'home',
            controller: 'homeController'
        })

        // about page
        .when('/note', {
            templateUrl: 'note',
            controller: 'noteController'
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
        .when('/show_content/:id', {
            templateUrl: 'show_content',
            controller: 'showController'
        })
        
        // write_form page
        .when('/register', {
            templateUrl: 'register',
            controller: 'registerController'
        })
        
        // write_form page
        .when('/question/:sexModel/:questionModel/:rateModel', {
            templateUrl: 'question',
            controller: 'questionController'
        })
        
        // delete_list page
        .when('/delete_list/:id', {
            templateUrl: 'delete_list',
            controller: 'deleteController'
        })
        
        // update_list page
        .when('/update_list/:id', {
            templateUrl: 'update_list',
            controller: 'updatesController'
        })
        
        // update_form page
        .when('/update_form/:id', {
            templateUrl: 'update_form',
            controller: 'updateFormController'
        })
        
        .when('/mapping', {
            templateUrl: 'mapping',
            controller: 'mappingController'
        })

    
	 	// otherwise page
    	.otherwise({redirectTo: '/login'});

});


app.controller("mainController", function($scope, $http, $rootScope, $templateCache, $location) {
//	alert("mainController");
	
    $rootScope.$on('$routeChangeStart', function(event, next, current) {
    		if (typeof current != 'undefined') {
        		$templateCache.removeAll();
           		console.log("current.templateUrl=" + current.templateUrl);
    		}
    });
    
//    $scope.swipeLeft = function() {
//    	alert("swipeleft")
//    	console.log("swipeleft = " + $location.path());
//    };
//    
//    $scope.swipeRight = function() {
//    	alert("swipeRight");
//    	console.log("swipeRight = " + $location.path());
//    };
    
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
