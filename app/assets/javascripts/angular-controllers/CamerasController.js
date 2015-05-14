angular.module('snapApp')
    .controller('CamerasController', CamerasController);

CamerasController.$inject = ['$http', '$routeParams', '$window'];

function CamerasController($http, $routeParams, $window){
    var self = this;

    self.params = $routeParams

    self.test = "TEST WORKING"

      self.getCameraIndex = function(){
      return $http({  
          method: 'GET',
          url: '/api/cameras'})
      .success(function(data){
          console.log("get index worked");
          // assign json string to this property set
          self.jsonCameras = data;
      })
      .error(function(data){
          console.log("get index DID NOT work!");
          console.log('data')
      });
  }; //close getCameraIndex

}