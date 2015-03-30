
app.factory('ChallengeService', ['$http', function($http) {

  var ChallengeService = {
    getChallenges: function() {
      return $http.get('/challenges');
    },
    createChallenge: function(challenge) {
      return $http.post('/challenges', {challenges:{player1_id:challenge}});
    }
  };

  return ChallengeService;

}]);

