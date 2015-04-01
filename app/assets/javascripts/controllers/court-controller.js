
app.controller('CourtController', ['$scope', '$http', 'CourtService', 'ChallengeService', 'gps', function($scope, $http, CourtService, ChallengeService, gps){



$scope.findCourts = function () {
var x = []
var y = []
CourtService.getCourts()
  .then(function(response){ 
  x = response.data
  return x
  }).then(function(x){
    dataArray = [];
    for (var i = 0; i < x.length; i++) {  
      y = getDistanceFromLatLonInKm(x[i].centre.latitude, x[i].centre.longitude, gps.userLat ,gps.userLon)
      dataArray.push(y);
    }
    return dataArray
  }).then(function(){
    $scope.courtsAndDistances = fuckHelpMe(x, dataArray);
  });
}


  
  // Getting all the courts that have been booked by users of this app //
  
  $scope.bbu = []
  $scope.bookedbyus = []
  CourtService.getCourts()
  .then(function(response){
    $scope.bbu = response.data
    // console.log($scope.bbu);
    for (i = 0; i < $scope.bbu.length; i++) {
      $scope.bbu[i].start_time = basicFormat($scope.bbu[i].start_time)
      // console.log(basicFormat($scope.bbu[i].start_time));
      if ($scope.bbu[i].user_id !== null)
        $scope.bookedbyus.push($scope.bbu[i]);       
    };
    // console.log($scope.bookedbyus);

  });

  

  // issuing a challenge that is associated with the courts that this person has booked //
  // create challenge request with the id of this court that is booked and the centre
  $scope.issueChallengewithCourt = function(court) {
    console.log(gon.current_user.id);
    console.log(court.id);
    console.log(court.centre_id);
    $scope.court_id = court.id
    $scope.centre_id = court.centre_id
    $scope.user_id = gon.current_user.id
    ChallengeService.createChallenge($scope.user_id, $scope.court_id, $scope.centre_id)
  };


 
// ###### function that books a court ###### //
  $scope.bookCourt = function(court) {
    $scope.court_id = court.id
    $scope.user_id = gon.current_user.id
    // console.log($scope.selectedCourt)
    CourtService.putCourts($scope.court_id, $scope.user_id)
    .then(function(response){
      console.log(response)
      $scope.bookedCourt = response.data
    });
  };
// ###### function that books a court ###### //

}]);









//  $scope.allavailableCourts = []
//   $scope.avbtwoCourts = []
// // Getting all challenge data //
//   $scope.findCourts = function () {
//     CourtService.getCourts()
//     .then(function(response){
//       $scope.temptwo = response.data
//       for (i = 0; i < $scope.temptwo.length; i++) { 
//         $scope.temptwo[i].start_time = basicFormat($scope.temptwo[i].start_time)
//         if ($scope.temptwo[i].availability == 'free')
//         $scope.allavailableCourts.push($scope.temptwo[i])
//       }
//       console.log($scope.allavailableCourts);
//     });
//   }












