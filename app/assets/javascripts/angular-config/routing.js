angular.module('snapApp')
    .config(['$routeProvider', config]);

function config($routeProvider){
    $routeProvider
        .when('/', {
            templateUrl: "index.html",
            controller: "CamerasController",
            controllerAs: "cameraCtrl"
        })
        .when('/cameras/:id', {
            templateUrl: "show.html",
            controller: "CamerasController",
            controllerAs: "cameraCtrl"
        })
        .when('/signup', {
            templateUrl: "signup.html",
            controller: "UsersController",
            controllerAs: "userCtrl"
        })
        .when('/users/:id', {
            templateUrl: "my_account.html",
            controller: "UsersController",
            controllerAs: "usersCtrl"
        })
        .otherwise({
            redirectTo: '/'
        });


}