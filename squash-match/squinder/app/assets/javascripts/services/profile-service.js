
// The http call to return all profiles from the db

app.factory('ProfileService', ['$http', function($http) {
   var ProfileService = {
    getProfiles: function() {
      return $http.get('users')
    }
    // getProfile: function(user) {
    //   return $http.get('/users/user_profile/'+user), 
    // }
  };
 return ProfileService
}]);