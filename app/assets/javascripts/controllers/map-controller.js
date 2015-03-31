

app.controller('MapController', ['$scope', '$http', '$timeout', '$location',  'NavigatorGeolocation', 'GeoCoder', function($scope, $http, $timeout, $location, NavigatorGeolocation, GeoCoder){


  NavigatorGeolocation.getCurrentPosition()
   .then(function(position) {
    $scope.meLat = position.coords.latitude, 
    $scope.meLong = position.coords.longitude;
     console.log($scope.meLat);
     console.log($scope.meLong);
   });



   // Checking that we can reverse geocode and address \\ 
  GeoCoder.geocode({address: 'the cn tower'}).then(function(result) {
  // console.log(result[0].geometry.location.D );
  });


CentreService.getCentres()
  .then(function(response) {
    $scope.centres = response.data;
    // console.log($scope.centre);
  });



getDistanceFromLatLonInKm(lat1,lon1,lat2,lon2) {

};






}]);