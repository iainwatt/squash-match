
app.controller('ProfileController', ['$scope', '$http', '$routeParams', 'ProfileService', 'CourtService', 'UserService', function($scope, $http, $routeParams, ProfileService, CourtService, UserService){

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
// ## -- getting the courts booked by current_user and the challenges -- ## \\



  
}]);



