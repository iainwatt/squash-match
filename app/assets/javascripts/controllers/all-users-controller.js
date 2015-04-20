

app.controller('AllUsersController', ['$scope', '$http', '$routeParams', function($scope, $http, $routeParams){


  $http.get('/users/all_users')
    .success(function(response){  
    $scope.top_users = response 
    console.log($scope.top_users);
    for (i=1; i < $scope.top_users.length;i++) {
      $scope.count = i
    }
    
  });
    console.log($scope.count);
    // $scope.count = $scope.top_users.count
    // console.log($scope.count);
    // for (i=1; $scope.top_users.length;i++) {
    //   console.log(i);
    // }
 // console.log(data.index);
//  $scope.range = function(n) {
//   return new Array(n);
// };


  


 

}]);