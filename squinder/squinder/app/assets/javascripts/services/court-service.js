

app.factory('CourtService', function($http){
  var CourtService = {
    getCourts: function() {
      return $http.get('http://localhost:3000/courts');
    }
  };
  return CourtService
})