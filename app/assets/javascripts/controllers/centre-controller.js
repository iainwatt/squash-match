
app.controller('CentreController', ['$scope', '$http', '$timeout', '$location', 'CentreService', 'CourtService', 'NavigatorGeolocation', 'GeoCoder', function($scope, $http, $timeout, $location, CentreService, CourtService, NavigatorGeolocation, GeoCoder){
  

$http.get('/users/current_user_profile')
 .success(function(data){
  $scope.user = data
 })

 // passing the displayTime() function from moment.js file so we can display a clock, and including the $timeout Angular service
  var updateTime = function() {
    $scope.displayTime = displayTime();
    $timeout(function() {
      updateTime();
    }, 1000);
  }
  updateTime();



}]);




// CentreService.getCentres()
  // .then(function(response) {
  //   $scope.centres = response.data;
  //   // console.log($scope.centre);
  // });

  // filter all the courts  

  // $scope.courts = []
  // CentreService.getCentres()
  //   .then(function(response) {
  //     $scope.centre = response.data;
  //     angular.forEach($scope.centre, function(value, key){ 
  //     $scope.courts.push(value.courts);   
  //     });
  //   $scope.allcourts = _.flatten($scope.courts)  
  //   // console.log($scope.allcourts); 
  // });


  // CourtService.getCourts()
  // .then(function(response){
  //   // console.log(response.data)
  // })

  


  // function to filter courts by availability 
  // $scope.av = []
  // CourtService.getCourts()
  // .then(function(response){
  //   // console.log(response.data)
  //   $scope.temp = response.data
  //   angular.forEach($scope.temp, function(value, key){ 
  //     // Here we create a new variable with only courts that are free
  //     if (value.availability == 'free')
  //       $scope.av.push(value);
  //   });
  //   // console.log($scope.av);
  //   angular.forEach($scope.av, function(value, key){ 
  //     // console.log(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
  //     });
  // })




// Getting the current user id 