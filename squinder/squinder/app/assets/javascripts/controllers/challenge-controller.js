

app.controller('ChallengeController', function($scope, $http, ChallengeService){

  $http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
  console.log($scope.user);
 })


  $scope.challengeUser = function(user) {
    console.log(user)
    // if ($scope.text) {
    //   $scope.list.push(this.text);
    //   $scope.text = '';
    //   }
  };

});



