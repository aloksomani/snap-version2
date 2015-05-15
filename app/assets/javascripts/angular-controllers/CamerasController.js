angular.module('snapApp')
    .controller('CamerasController', CamerasController);

CamerasController.$inject = ['$http', '$routeParams', '$window'];

function CamerasController($http, $routeParams, $window){
    var self = this;

    self.params = $routeParams

    self.test = "TEST WORKING"



    self.getAllCameras = function(){
      var style;
      var portability;
      var price;

      var filterData = {style: style , portability: portability, price: price};

      var url = "/api/cameras";

      $http({
        method: 'GET',
        url: url,
        params: filterData
      })
        .success(function(data){
          self.jsonCameras = data;
          console.log(data);
          $window.location.href = "#/";
        })
        .error(function(data){
          console.log("get index DID NOT work!");
        });  

    }; //close getAllCameras

    self.getCameraIndex = function(){
      var style = self.style;
      var portability = self.portability;
      var price = self.price;

      var filterData = {style: style , portability: portability, price: price};
      var url = "/api/cameras";

      console.log(filterData);

      $http({
        method: 'GET',
        url: url,
        params: filterData
      })
        .success(function(data){
          self.jsonCameras = data;
          console.log(data);
        })
        .error(function(data){
          console.log("get index DID NOT work!");
        });  

    }; //close getCameraIndex

    self.showCamera = function(){
      var url = "/api/cameras/" + self.params.id;

      console.log(self.params);
      console.log(url)

      $http.get(url)
        .success(function(data){
          console.log("successfull show request")
          self.currentCamera = data;
        })
        .error(function(data){
          console.log("Error!")
        })
} //end of showCamera function

}