

app.factory('UserService', ['$http', function($http) {
  var UserService = {
    getUsers: function() {
      return $http.get('/users/get_all_users');
    },
    putWin: function(user, result) {
      return $http.put('/users/log_win/'+user, {challenge:{wins:result}})
    },
    putLoss: function(user, result) {
      return $http.put('/users/log_loss/'+user, {challenge:{losses:result}})
    }
  };
  return UserService
}]);



 // {challenge:{wins:result}}); 