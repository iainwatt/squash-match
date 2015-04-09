
app.factory('ChallengeService', ['$http', function($http) {

  var ChallengeService = {
    getChallenges: function() {
      return $http.get('/challenges');
    },
    createChallenge: function(challenge, court, centre) {
      return $http.post('/challenges', {challenges:{player1_id:challenge, court_id:court, centre_id:centre}});
    },
    putChallenge: function(challenge, user) {
      return $http.put('/challenges/accept_challenge/'+challenge, {challenge:{player2_id:user}});
    },
    destroyChallenge: function(challenge) {
      return $http.delete('/challenges/end_challenge/'+challenge);
    }
  };

  return ChallengeService;

}]);

