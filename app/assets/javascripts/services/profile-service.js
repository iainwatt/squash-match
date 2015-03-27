
// The http call to return all profiles from the db

app.factory('ProfileService', ['$http', function($http) {
   var ProfileService = {
    getProfiles: function() {
      return $http.get('http://localhost:3000/users')
    }
  };
 return ProfileService
}]);