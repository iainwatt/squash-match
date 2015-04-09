
app.controller('ProfileController', ['$scope', '$http', '$routeParams', 'ProfileService', 'CourtService', 'UserService', 'ChallengeService', function($scope, $http, $routeParams, ProfileService, CourtService, UserService, ChallengeService){

  var controller = this;
  $http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
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
      // console.log(mybookings[i].courts)
      // console.log(mybookings[i].challenges)
      $scope.myCourts = mybookings[i].courts
      $scope.myChallenges = mybookings[i].challenges
    }
  })


// ########## -- Logging win information, we want to include the update informaiton of player 2 later
  $scope.logWin = function(challenge) {
   $scope.opponent_id = challenge.player1.id 
   $scope.opponentLosses = (challenge.player1.losses + 1) 
   $scope.user = gon.current_user.id
   $scope.result = (gon.current_user.wins + 1)
   // console.log($scope.opponent_id)
   // console.log($scope.opponentLosses)
   // console.log($scope.user)
   // console.log($scope.result)
    UserService.putWin($scope.user, $scope.result)
      .then(function(response){
        console.log(response)
      })
  };
// ##################### ----- This is the start of the promise that will trigger a refresh of the getUsers call etc...
// .then(function(){
//   UserService.getUsers.....
// });


// ########## -- Logging loss information
  $scope.logLoss = function(challenge) {
    $scope.user = gon.current_user.id
    $scope.result = (gon.current_user.losses + 1)
    // console.log($scope.result)
    UserService.putLoss($scope.user, $scope.result)
      .then(function(response){
      })
  };

  $scope.destroyChallenge = function(challenge) {
    console.log(challenge)
   $scope.challenge = challenge.id
   console.log($scope.challenge)
   ChallengeService.destroyChallenge($scope.challenge)
    .then(function(response){
    })
  }; 



  
}]);



