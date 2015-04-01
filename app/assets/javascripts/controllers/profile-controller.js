
app.controller('ProfileController', ['$scope', '$http', '$routeParams', 'ProfileService', 'CourtService', 'UserService', function($scope, $http, $routeParams, ProfileService, CourtService, UserService){

  var controller = this;
  $http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
 })


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
// ## -- getting the courts booked by current_user and the challenges -- ## \\







  
}]);







//// #### ---- function to accept a pending challenge ---- #### \\\\
// $scope.acceptChallenge = function(challenge) {
//     console.log(gon.current_user.id);
//     console.log(challenge.id);
//     $scope.challenge_id = challenge.id
//     $scope.user_id = gon.current_user.id
//     ChallengeService.putChallenge($scope.challenge_id, $scope.user_id)
//     .then(function(response){
//      $scope.challengeOffered = response.data
//      console.log($scope.challengeOffered);
//     });
//     // $route.reload();
//   };
  //// #### ---- function to accept a pending challenge ---- #### \\\\

