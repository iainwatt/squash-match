
app.factory('ChallengeService', ['$http', function($http) {

  var ChallengeService = {
    getChallenges: function() {
      return $http.get('/challenges');
    },
    createChallenge: function(challenge, court, centre) {
      return $http.post('/challenges', {challenges:{player1_id:challenge, court_id:court, centre_id:centre}});
                                        // is 'challenges related to require:challenges and for {player1_id:challenge} challenge must be the user_id passed from newChallenge so could be court.' so now do we need function(challenge, court, centre) and {challenges:{player1_id:challenge, :court_id:court, :centre_id:centre}}
    }
    // putCourts: function(court, user) {
    //   // where does the variable user come from, have we renamed ($scope.court_id, $scope.user_id) as court and user then renamed user(id) as user_id
    //   return $http.put('/courts/book_a_court/'+court, {court:{user_id:user}});
    // }
  };

  return ChallengeService;

}]);

