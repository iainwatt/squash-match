
app.controller('CourtController', function($scope, $http, CourtService){

// gets all court data 
  $scope.av = []
  $scope.findCourts = function() {
    CourtService.getCourts()
    .then(function(response){
    // console.log(response.data)
    $scope.temp = response.data
      angular.forEach($scope.temp, function(value, key){ 
      // Here we create a new variable with only courts that are free
      if (value.availability == 'free')
        $scope.av.push(value);
      });
    // console.log($scope.av)
        angular.forEach($scope.av, function(value, key){ 
        console.log(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
        });
    });
  };


});