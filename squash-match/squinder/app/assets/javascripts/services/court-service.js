

app.factory('CourtService', ['$http', function($http) {
  var CourtService = {
    getCourts: function() {
      return $http.get('/courts');
    },
    putCourts: function(court, user) {
      return $http.put('/courts/book_a_court/'+court, {court:{user_id:user}});
    }
   }; 
  return CourtService
}]);