

app.controller('MapController', ['$scope', '$http', '$timeout', '$location',  'NavigatorGeolocation', 'GeoCoder', function($scope, $http, $timeout, $location, NavigatorGeolocation, GeoCoder){



  NavigatorGeolocation.getCurrentPosition()
   .then(function(position) {
    $scope.meLat = position.coords.latitude, 
    $scope.meLong = position.coords.longitude;
     // console.log($scope.meLat);
     // console.log($scope.meLong);
   });



   // Checking that we can reverse geocode and address \\ 
  GeoCoder.geocode({address: 'the cn tower'}).then(function(result) {

  });










}]);