

app.filter('customtime', function () {
  return function (t) {
    if (t === null) {
      return "Email player for details"
    } else {
      var nicetime = basicFormat(t)
      return nicetime; 
    }
  };
});