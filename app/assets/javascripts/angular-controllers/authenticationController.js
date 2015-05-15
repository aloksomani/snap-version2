angular
    .module("snapApp")
    .controller("AuthenticationController", AuthenticationController);

    AuthenticationController.$inject = ["$http"];

    function AuthenticationController($http){
        var self = this;

        self.email; //bound to form in view
        self.password; //bound to form in view
        self.name = name;
        self.login = login;
        self.logout = logout;
        self.isAuthenticated = isAuthenticated();


        function isAuthenticated(){
            return window.sessionStorage.access_token ? true : false;
            
        }


        function login(){
            var credentials = { 
              email: self.email, 
              password: self.password 
            };
            $http.post("/api/authenticate", credentials)
            .success(function(data){
                console.log(data);
                setAccessToken(data.token);
                self.isAuthenticated = isAuthenticated();
                self.email = null;
                self.password = null;
            })
            .error(function(data){
                console.log(data);
            });
        };



        function setAccessToken(token){
                window.sessionStorage.setItem("access_token", token);
            };


        function logout(){
                window.sessionStorage.clear();
                self.isAuthenticated = isAuthenticated();
        }//end logout function

}