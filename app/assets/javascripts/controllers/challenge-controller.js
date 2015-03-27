

app.controller('ChallengeController', ['$scope', '$http', 'ChallengeService', 'UserService', function($scope, $http, ChallengeService, UserService){

// getting all challenge data with userinfo attached
// UserService.getUsers()
// .then(function(response) {
//   $scope.users = response.data
//   console.log($scope.users)
// })



// getting all challenge data
  ChallengeService.getChallenges()
  .then(function(response) {
    $scope.challenges = response.data
    console.log($scope.challenges);
  });



// getting the user data through http request so that i can have access to that id 
  $http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
  // console.log($scope.user);
 })

// creating a new challenge
  // $scope.challengeUser = function(user) {
  //   // console.log(user)
  //   $scope.user_id = user
  //   ChallengeService.createChallenge($scope.user_id)
  //   .then(function(response){
  //     console.log(response);
  //   });
  // };

 $scope.newChallenge = function() {
  // $scope.challengeUser = $scope.user.id
  console.log($scope.user.id)
  ChallengeService.createChallenge($scope.user.id)
  .then(function(response){
  // console.log(response);
  });
};


  // $scope.newChallenge = function() {
  //   ChallengeService.createChallenge($scope.challengeUser)
  //   .then(function(response) {
  //   console.log(response);
  //   });
  // }


}]);





