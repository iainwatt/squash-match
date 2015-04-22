app.controller('UserProfileController', ['$scope', '$http', '$routeParams', 'ProfileService', 'CourtService', 'UserService', function($scope, $http, $routeParams, ProfileService, CourtService, UserService){


  $http.get('/users/user_profile/'+$routeParams.id)
 .success(function(data){

  $scope.userInfo = data
  console.log($scope.userInfo)
 })

}])