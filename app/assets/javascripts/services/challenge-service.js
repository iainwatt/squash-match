
app.factory('ChallengeService', ['$http', function($http) {

  var ChallengeService = {
    getChallenges: function() {
      return $http.get('http://localhost:3000/challenges');
    },
    createChallenge: function(challenge) {
      return $http.post('http://localhost:3000/challenges', challenge);
    }
  };

  return ChallengeService;

}]);