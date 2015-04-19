

function geoLocate () {
  NavigatorGeolocation.getCurrentPosition()
   .then(function(position) {
    $scope.meLat = position.coords.latitude, 
    $scope.meLong = position.coords.longitude;
     console.log($scope.meLat);
     console.log($scope.meLong);
  });
};