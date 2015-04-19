
app.controller('ProfileController', ['$scope', '$http', '$routeParams', 'ProfileService', 'CourtService', 'UserService', 'ChallengeService', function($scope, $http, $routeParams, ProfileService, CourtService, UserService, ChallengeService){

  var controller = this;
  $http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
  console.log($scope.user)
  })

 $scope.getUserProfile = function(user) {
  console.log(user)
  $http.get('/users/user_profile/'+user)
 .success(function(data){
  $scope.userInfo = data
  console.log($scope.userInfo)
  })
 };



// ## -- getting the courts booked by current_user and the challenges -- ## \\
  UserService.getUsers()
  .then(function(response) {
    console.log(response.data);
    mybookings = response.data
    for (i = 0; i < mybookings.length; i++ ) {
      $scope.myCourts = mybookings[i].courts
      console.log( $scope.myCourts);
      $scope.myChallenges = mybookings[i].challenges
    }
  })

// ########## -- Accept a challenge 
$scope.acceptChallenge = function(challenge) {
  console.log(challenge)
  $scope.challenge = challenge.id

  ChallengeService.acceptChallenge($scope.challenge)
  .then(function(response){
      console.log("Challenge Accepted");
      console.log(response);
    })


  // alertService.add("warning", "This is a warning.");




} 

// ########## -- Logging win information for current user, loss info for opponenet and destroying the challenge.
  $scope.logWin = function(challenge) {

   $scope.opponent = challenge.player1.id 
   $scope.opponentLosses = (challenge.player1.losses + 1) 
   $scope.user = gon.current_user.id
   $scope.result = (gon.current_user.wins + 1)
   $scope.challenge = challenge.id
 
    UserService.putMyWin($scope.user, $scope.result)
      .then(function(response){
      })
    UserService.putOpponentLosses($scope.opponent, $scope.opponentLosses)
      .then(function(response){
      })
    EloRatingCalc(gon.current_user, challenge.player1)
   $scope.newUserElo = gon.current_user.elo
   $scope.newOpponentElo = challenge.player1.elo


   UserService.putUpdateUserElo($scope.user, $scope.newUserElo)
    .then(function(response){
      console.log("elo updated for current user")
    })
    UserService.putUpdateOpponentElo($scope.opponent, $scope.newOpponentElo)
    .then(function(response){
      console.log("elo updated for the opponent user")
    })
    ChallengeService.destroyChallenge($scope.challenge)
    .then(function(response){
      console.log("Challenge Destroyed")
    })
  };



// ########## -- Logging loss information fo user, win for opponent and destroying the challenge. 
  $scope.logLoss = function(challenge) {

    $scope.user = gon.current_user.id
    $scope.result = (gon.current_user.losses + 1)
    $scope.opponent = challenge.player1.id 
    $scope.opponentWins = (challenge.player1.wins + 1)
    $scope.challenge = challenge.id

    UserService.putLoss($scope.user, $scope.result)
      .then(function(response){
      })
    UserService.putOpponentWins($scope.opponent, $scope.opponentWins)
      .then(function(response){
      })
  EloRatingCalc(challenge.player1, gon.current_user)
   $scope.newUserElo = gon.current_user.elo
   $scope.newOpponentElo = challenge.player1.elo    

   UserService.putUpdateUserElo($scope.user, $scope.newUserElo)
    .then(function(response){
      console.log("elo updated for current user")
    })
    UserService.putUpdateOpponentElo($scope.opponent, $scope.newOpponentElo)
    .then(function(response){
      console.log("elo updated for the opponent user")
    })

    ChallengeService.destroyChallenge($scope.challenge)
      .then(function(response){
        console.log("Challenge Destroyed")
      })
  };


// ########## -- Cancelling a challenge, this function needs to automatically show on screen
  $scope.destroyChallenge = function(challenge) {
    console.log(challenge)
   $scope.challenge = challenge.id
   console.log($scope.challenge)
   ChallengeService.destroyChallenge($scope.challenge)
    .then(function(response){
    })
  }; 

$('#toggle-bookings').click(function() {
  $('#my-booked-courts-wrap').show(200);
  $('#my-challengers-list').hide(600);
});

$('#toggle-challenges').click(function() {
  $('#my-challengers-list').show(200);
  $('#my-booked-courts-wrap').hide(700);
});


  
}]);



