angular.module('snapApp')
    .controller('CamerasController', CamerasController);

CamerasController.$inject = ['$http', '$routeParams', '$window', 'FileUploader'];

function CamerasController($http, $routeParams, $window, FileUploader){
    var self = this;

    var accessToken = window.sessionStorage.access_token;

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


  self.addReview = function(){
    var url ="/api/cameras/"+ self.params.id +"/reviews"
    var newReview= {
        rating: self.rating,
        description: self.description
      };
    $http.post(url, newReview)
    .success(function(data){
      console.log("successfully added review");
      self.currentCamera.reviews.push(data);
      self.rating = null;
      self.description = null;
    })
    .error(function(data){
      console.log(newReview);
      console.log("review was not created");
      console.log(data);
    })
  }

   self.deleteReview = function(review){
    var url ="/api/cameras/"+ self.params.id +"/reviews/" + review.id;
   
    $http.delete(url)
    .success(function(data){
      console.log("Successfully deleted review");
      self.currentCamera.reviews.splice(self.currentCamera.reviews.indexOf(review),1);
    })
    .error(function(data){
      console.log(deleteReview);
      console.log("review was not deleted");
      console.log(data);
    })
  }
  
    self.uploader = new FileUploader({url: "/api/cameras/"+ self.params.id +"/samples"});
    self.uploader.onCompleteItem = function(fileItem, response, status, headers){
      console.log(response);
      self.currentCamera.samples.push(response);
      //figure out how to empty the file upload input
      // self.currentCamera.samples= "";
    }
    
   self.addSample = function(){
    console.log("add sample called!");
    // self.uploader = new FileUploader({url: "/api/cameras/"+ self.params.id +"/samples"});
    var url ="/api/cameras/"+ self.params.id +"/samples"
    var newSample= {
        remote_photo_url: self.remote_photo_url
      };
    $http.post(url, newSample)
    .success(function(data){
      console.log(data);
      self.currentCamera.samples.push(newSample)
    })
    .error(function(data){
      console.log(newSample);
      console.log("sample was not added");
      console.log(data);
    })
  }

     self.deleteSample = function(sample){
    var url ="/api/cameras/"+ self.params.id +"/samples/" + sample.id;
   
    $http.delete(url)
    .success(function(data){
      console.log("sample was successfully deleted");
      self.currentCamera.samples.splice(self.currentCamera.samples.indexOf(sample),1);
    })
    .error(function(data){
      console.log(deleteSample);
      console.log("sample was not deleted");
      console.log(data);
    })
  }












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