

app.factory('CentreService', function($http) {
  var CentreService = {
    getCentres: function() {
      return $http.get('http://localhost:3000/centres');
    }
  };
  return CentreService;
});