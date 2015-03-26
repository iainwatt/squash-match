
app.controller('ProfileController', function($scope, $http, $routeParams, ProfileService){

  var controller = this;
  $http.get('/users/current_user_profile')
 .success(function(data){
  // console.log(data);
  $scope.user = data
  console.log($scope.user);
 })


  
});