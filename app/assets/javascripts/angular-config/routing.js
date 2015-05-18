angular.module('snapApp')
    .config(['$routeProvider', config]);

function config($routeProvider){
    $routeProvider
        .when('/', {
            templateUrl: "index.html"
        })
        .when('/filter', {
            templateUrl: "index.html",
            controller: "CamerasController",
            controllerAs: "cameraCtrl"
        })
        .when('/cameras/:id', {
            templateUrl: "show.html"
        })
        .when('/login', {
            templateUrl: "login.html",
            controller: "UsersController",
            controllerAs: "userCtrl"
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