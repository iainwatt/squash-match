

app.factory('UserService', ['$http', function($http) {
  var UserService = {
    getUsers: function() {
      return $http.get('/users/get_all_users');
    },
    putMyWin: function(user, result) {
      return $http.put('/users/log_win/'+user, {challenge:{wins:result}});
    },
    putLoss: function(user, result) {
      return $http.put('/users/log_loss/'+user, {challenge:{losses:result}})
    },
    putOpponentWins: function(opponent, opponentWins) {
      return $http.put('/users/log_opponent_win/'+opponent, {challenge:{wins:opponentWins}});
    },
    putOpponentLosses: function(opponent, opponentLosses) {
      return $http.put('/users/log_opponent_loss/'+opponent, {challenge:{losses:opponentLosses}});
    },
    putUpdateUserElo: function(user, newUserElo) {
      return $http.put('/users/new_user_elo/'+user, {challenge:{elo:newUserElo}});
    },
    putUpdateOpponentElo: function(opponent, newOpponentElo) {
      return $http.put('/users/new_opponent_elo/'+opponent, {challenge:{elo:newOpponentElo}});
    }
    
  };
  return UserService
}]);



 // {challenge:{wins:result}}); 