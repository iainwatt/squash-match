
app.controller('CentreController', function($scope, $http, CentreService, CourtService){
  
  CentreService.getCentres()
  .then(function(response) {
    $scope.centres = response.data;
    // console.log($scope.centre);
  });


$scope.courts = []

  CentreService.getCentres()
    .then(function(response) {
      $scope.centre = response.data;
      angular.forEach($scope.centre, function(value, key){ 
      $scope.courts.push(value.courts);   
      });
    $scope.allcourts = _.flatten($scope.courts)  
    // console.log($scope.allcourts); 
  });

  CourtService.getCourts()
  .then(function(response){
    // console.log(response.data)
  })

  var time = displayTime();
  $scope.dispalyTime = time
  console.log($scope.dispalyTime)

  $scope.displayTime = function(time) {
    $scope.dispalyTime = time;
    console.log($scope.dispalyTime)
  }

  // JSON.parse // this turns umanageable data back into js objects
  // helper.js file in services to put helper funcitons



 


});