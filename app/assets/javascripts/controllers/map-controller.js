

app.controller('MapController', ['$scope', '$http', '$timeout', '$location',  'NavigatorGeolocation', 'GeoCoder', function($scope, $http, $timeout, $location, NavigatorGeolocation, GeoCoder){



  NavigatorGeolocation.getCurrentPosition()
   .then(function(position) {
    // if (position == null) {
    //   alert("If you are reading this message then we cannot find your locaiton, please enable location services on you browser or the default location (which determines the people you will be matched with) will be used. This is currently set for Oxford Circus, London")
    //   $scope.meLat = '51.520151399999996',
    //   $scope.meLong = '-0.0704819'
    // } else if (position != null) {
    //   $scope.meLat = position.coords.latitude, 
    //   $scope.meLong = position.coords.longitude;
    // }
    $scope.meLat = position.coords.latitude, 
    $scope.meLong = position.coords.longitude;
     // console.log($scope.meLat);
     // console.log($scope.meLong);
   });



   // Checking that we can reverse geocode and address \\ 
  GeoCoder.geocode({address: 'the cn tower'}).then(function(result) {
    console.log(result);
  });










}]);