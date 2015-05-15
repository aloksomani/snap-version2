angular.module('snapApp')
    .controller('UsersController', UsersController);

UsersController.$inject = ['$http', '$routeParams', '$window'];

function UsersController($http, $routeParams, $window){
  var self = this;

  self.params = $routeParams

 self.createUser = function(){
      var newUser = {
        name: self.name,
        email: self.email,
        password: self.password,
        password_confirmation: self.password_confirmation,
        address_line_1: self.address_line_1,
        city: self.city,
        state: self.state,
        zipcode: self.zipcode
      };

      console.log(newUser)

      $http.post('/api/users', {user: newUser})
          .success(function(data){
              console.log('successfully created user');
              $window.location.href = ("#/cameras")
          })
          .error(function(data){
              console.log("Could not create user account. ")
              console.dir(data)
          });
 }; //end of createUser method


self.showUser = function(){
    var url = "/api/users/" + self.params.id;

    console.log(self.params);
    console.log(url)

    $http.get(url)
          .success(function(data){
                console.log("successfull show request")
                self.currentUser = data;
          })
          .error(function(data){
              console.log("Error!")

          })
} //end of showDog function

}; // end of DogsController