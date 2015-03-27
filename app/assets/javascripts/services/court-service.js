

app.factory('CourtService', ['$http', function($http) {
  var CourtService = {
    getCourts: function() {
      return $http.get('/courts');
    }
  };
  return CourtService
}]);