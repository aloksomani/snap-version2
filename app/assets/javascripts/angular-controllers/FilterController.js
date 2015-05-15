angular
  .module('snapApp')
  .controller('FilterController', FilterController);


FilterController.$inject = ['$http', '$routeParams', '$window'];

function FilterController($http, $routeParams, $window){
  var self = this;
  self.params = $routeParams;
  self.filterCameras = filterCameras;


  function filterCameras(){
    // console.log($("#style-picked").text());
    var style = self.style;
    var portability = self.portability;
    var price = self.price;

    var filterData = {0: style, 1: portability, 2: price};
    var url = "/api/cameras";

    console.log(filterData);

    $http.get(url, filterData)
      .success(function(data){
        self.jsonCameras = data;
        console.log(data);
      })
      .error(function(data){
        console.log("get index DID NOT work!");
      });

  };


}