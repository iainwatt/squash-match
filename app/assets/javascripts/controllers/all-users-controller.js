

app.controller('AllUsersController', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){


  $http.get('/users/all_users')
 .success(function(data){

  $scope.all_users = data
  console.log($scope.all_users);
  console.log("Hello");
 });


 

}])