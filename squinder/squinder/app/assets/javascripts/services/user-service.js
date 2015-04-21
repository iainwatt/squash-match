

app.factory('UserService', ['$http', function($http) {
  var UserService = {
    getUsers: function() {
      return $http.get('/users/get_all_users');
    } 
  };
  return UserService
}]);