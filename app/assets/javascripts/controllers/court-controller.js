
app.controller('CourtController', function($scope, $http, CourtService){

// gets all court data 
  $scope.avbCourts = []
  $scope.availableCourts = []
  $scope.findCourts = function() {
    CourtService.getCourts()
    .then(function(response){
    // console.log(response.data)
    $scope.temp = response.data
      angular.forEach($scope.temp, function(value, key){ 
      // Here we create a new variable with only courts that are free
      if (value.availability == 'free')
        $scope.availableCourts.push(value);
      });
    console.log($scope.availableCourts)
        angular.forEach($scope.av, function(value, key){ 
        // console.log(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
        // $scope.avbCourts.push(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
        });
        // $scope.availableCourts = $scope.avbCourts
        // console.log($scope.availableCourts);
    });
  };

// getting all available court info but not on click
  $scope.allavailableCourts = []
  $scope.avbtwoCourts = []
  CourtService.getCourts()
  .then(function(response){
    // $scope.temptwo = response.data
    angular.forEach($scope.temp, function(value, key){ 
      if (value.availability == 'free')
      $scope.allavailableCourts.push(value);
    });
    // console.log($scope.allavailableCourts);
    angular.forEach($scope.av, function(value, key){ 
      $scope.avbtwoCourts.push(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
    });
    // console.log($scope.avbtwoCourts);
  })



});