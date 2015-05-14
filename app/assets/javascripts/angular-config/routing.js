angular.module('snapApp')
    .config(['$routeProvider', config]);

function config($routeProvider){
    $routeProvider
        .when('/', {
            templateUrl: "index.html",
            controller: "CamerasController",
            controllerAs: "cameraCtrl"
        })
        .otherwise({
            redirectTo: '/'
        });
}