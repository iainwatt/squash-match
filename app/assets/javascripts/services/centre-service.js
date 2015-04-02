

app.factory('CentreService', ['$http', function($http) {
  var CentreService = {
    getCentres: function() {
      return $http.get('/centres');
    }
    
  };
  return CentreService;
}]);