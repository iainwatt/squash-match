
app.controller('CourtController', ['$scope', '$http', 'CourtService', function($scope, $http, CourtService){

$scope.user = gon.current_user
// gets all court data 
  // $scope.avbCourts = []
  // $scope.availableCourts = []
  // $scope.findCourts = function() {
  //   CourtService.getCourts()
  //   .then(function(response){
  //   // console.log(response.data)
  //   $scope.temp = response.data
  //     angular.forEach($scope.temp, function(value, key){ 
  //     // Here we create a new variable with only courts that are free
  //     if (value.availability == 'free')
  //       $scope.availableCourts.push(value);
  //     });
  //   console.log($scope.availableCourts)
  //       angular.forEach($scope.av, function(value, key){ 
  //       // console.log(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
  //       // $scope.avbCourts.push(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
  //       });
  //       // $scope.availableCourts = $scope.avbCourts
  //       // console.log($scope.availableCourts);
  //   });
  // };


// with a js loop //
  $scope.allavailableCourts = []
  $scope.avbtwoCourts = []
  CourtService.getCourts()
  .then(function(response){
    $scope.temptwo = response.data
    for (i = 0; i < $scope.temptwo.length; i++) { 
      if ($scope.temptwo[i].availability == 'free')
      $scope.allavailableCourts.push($scope.temptwo[i])
    }
    // console.log($scope.allavailableCourts)
  })

console.log(gon.current_user);

// $scope.selectCourt = function() {

// }

//  $scope.bookCourt = function() {

//  };
   
  // angular.forEach($scope.av, function(value, key){ 
  //     $scope.avbtwoCourts.push(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
  //   });









}]);