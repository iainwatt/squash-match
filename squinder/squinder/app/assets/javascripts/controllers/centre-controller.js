
app.controller('CentreController', function($scope, $http, $timeout, CentreService, CourtService){
  
  CentreService.getCentres()
  .then(function(response) {
    $scope.centres = response.data;
    // console.log($scope.centre);
  });


  $scope.courts = []

  CentreService.getCentres()
    .then(function(response) {
      $scope.centre = response.data;
      angular.forEach($scope.centre, function(value, key){ 
      $scope.courts.push(value.courts);   
      });
    $scope.allcourts = _.flatten($scope.courts)  
    // console.log($scope.allcourts); 
  });

  CourtService.getCourts()
  .then(function(response){
    // console.log(response.data)
  })

  // passing the displayTime() function from moment.js file so we can display a clock

  // var time = displayTime();
  // $scope.displayTime = time;
  var updateTime = function() {
    $scope.displayTime = displayTime();
    $timeout(function() {
      updateTime();
    }, 1000);
  }
  updateTime();

  // function hello() {
  //   setInterval(function(){
  //   console.log("hello");
  //   hello();
  //   }, 1000);
  // };
  // hello()
  
  // console.log($scope.dispalyTime)

  // function to filter courts by availability 

  CourtService.getCourts()
  .then(function(response){
    console.log(response.data)
    $scope.temp = response.data
    angular.forEach($scope.temp, function(value, key){ 
      console.log(value.availability, value.centre.location);  
    });
  })


// $.each(array, (index, court) {
//   if(court is free){

//   }else

// })

// _.each(array, (index, court, xxxx){

// })

  // $scope.displayTime = function(time) {
  //   $scope.displayTime = time;
  //   console.log($scope.dispalyTime)
  // }

  // function to display what courst are available by time

  // JSON.parse // this turns umanageable data back into js objects
  // helper.js file in services to put helper funcitons



 


});