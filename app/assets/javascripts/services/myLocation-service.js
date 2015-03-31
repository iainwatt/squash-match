

// app.factory('myLocationService', ['$http', '$scope', 'NavigatorGeolocation', function($http, $scope, NavigatorGeolocation) {

// var myLocationService =  NavigatorGeolocation.getCurrentPosition()
//    .then(function(position) {
//     // $scope.meLat = position.coords.latitude, 
//     // $scope.meLong = position.coords.longitude;
//      // console.log($scope.meLat);
//      // console.log($scope.meLong);
//    });

// return myLocationService



//   }]);

app.factory("GeolocationService", ['$q', '$window', '$rootScope', function ($q, $window, $rootScope) {
    return function () {
        var deferred = $q.defer();

        if (!$window.navigator) {
            $rootScope.$apply(function() {
                deferred.reject(new Error("Geolocation is not supported"));
            });
        } else {
            $window.navigator.geolocation.getCurrentPosition(function (position) {
                $rootScope.$apply(function() {
                    deferred.resolve(position);
                });
            }, function (error) {
                $rootScope.$apply(function() {
                    deferred.reject(error);
                });
            });
        }

        return deferred.promise;
    }
}]);