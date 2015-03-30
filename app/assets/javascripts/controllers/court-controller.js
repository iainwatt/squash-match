
app.controller('CourtController', ['$scope', '$http', 'CourtService', function($scope, $http, CourtService){




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
  });
  
  // Getting all the courts that have been booked by users of this app //
  $scope.bbu = []
  $scope.bookedbyus = []
  CourtService.getCourts()
  .then(function(response){
    $scope.bbu = response.data
    for (i = 0; i < $scope.bbu.length; i++) {
      if ($scope.bbu[i].user_id !== null)
        $scope.bookedbyus.push($scope.bbu[i])       
    };
    console.log($scope.bookedbyus);
  });


 
// function that books a court
$scope.bookCourt = function(court) {
  // console.log(gon.current_user.id)
  // console.log(court.id);
  $scope.court_id = court.id
  $scope.user_id = gon.current_user.id
  // console.log($scope.selectedCourt)
  CourtService.putCourts($scope.court_id, $scope.user_id)
  .then(function(response){
  });
};


}]);














// 1. Create ng-click in index that indentifies the correct court we are talking are trying to book 
// 2. func in controller that sends the data of the selected court and the current user.id as a put request
// 3. http.put in service file that sends the data .. $http.put('/courts/book_a_court/'+selectedCourt.id, user_id);
// 4. A method in cout_controller.rb that finds that court, then includes the [ data book_court = Court.find(selectedCourt.id) and passes back id ]
// 5. routes


// $scope.selectCourt = function() {

// }

//  $scope.bookCourt = function() {

//  };
   
  // angular.forEach($scope.av, function(value, key){ 
  //     $scope.avbtwoCourts.push(value.availability, value.centre.location, value.court_no, basicFormat(value.start_time), basicFormat(value.end_time));
  //   });


// $scope.court_id = []
// $scope.selectCourt = function(court) {
//     $scope.selectedCourt = court;
//     $scope.court_id.push($scope.selectedCourt.id)
//     // console.log($scope.selectedCourt.id)
//   };


// $scope.user = gon.current_user
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







