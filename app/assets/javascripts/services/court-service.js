

app.factory('CourtService', ['$http', function($http) {
  var CourtService = {
    getCourts: function() {
      return $http.get('/courts');
    },
    putCourts: function(court) {
      return $http.put('/courts/book_a_court', court);
    }
   }; 
  return CourtService
}]);