

app.controller('ChallengeController', ['$route', '$scope', '$http', 'ChallengeService', 'UserService', function($route, $scope, $http, ChallengeService, UserService){


// getting all challenge data
  $scope.challengeHelp = []
  ChallengeService.getChallenges()
  .then(function(response) {
    // console.log(response.data);
    $scope.challenges = response.data
    $scope.challengeHelp.push($scope.challenges);
    for (i = 0; i < $scope.challenges.length; i++) {
      // console.log($scope.challenges[i].player1_id);
      // if ($scope.challenges[i].player1_id !== gon.current_user.id)
      //   $scope.player1Challenges = $scope.challenges[i]
    };
    // console.log($scope.player1Challenges);
    
  });

console.log(gon.current_user.id);
// player2 offering to play player1 \\
  $scope.acceptChallenge = function(challenge) {
    console.log(gon.current_user.id);
    console.log(challenge.id);
    $scope.challenge_id = challenge.id
    $scope.user_id = gon.current_user.id
    ChallengeService.putChallenge($scope.challenge_id, $scope.user_id)
    $route.reload();
  };

// so if certain parameters are met the the match is automatically accepted. and this trigger 'its a match' animation




// getting the user data through http request so that i can have access to that id 
  $http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
  // console.log($scope.user);
 })


}]);














// trying to get user data then filter so that i have an array of challengs with location, user(name, image etc) and court time so another user can pick
 // UserService.getUsers()
 // .then(function(response) {
 //  // console.log($scope.challengeHelp);
 //  $scope.pendingUser = response.data
 //  // console.log($scope.pendingUser);
 //  for (i = 0; i < $scope.pendingUser.length; i++) {
 //    // console.log($scope.pendingUser[i].id);
 //    // console.log($scope.challengeHelp);
 //    if $scope.pendingUser[i].id === _.flatten($scope.challengeHelp.id)   
 //     $scope.challengeData = _.flatten($scope.challenge).concat($scope.pendingUser[i])    
 //  };
 //  console.log($scope.challengeData)

 // });



// creating a new challenge
  // $scope.challengeUser = function(user) {
  //   // console.log(user)
  //   $scope.user_id = user
  //   ChallengeService.createChallenge($scope.user_id)
  //   .then(function(response){
  //     console.log(response);
  //   });
  // };



//  $scope.newChallenge = function() {
//   // $scope.challengeUser = $scope.user.id
//   console.log($scope.user.id)
//   ChallengeService.createChallenge($scope.user.id)
//   .then(function(response){
//   // console.log(response);
//   });
// };



