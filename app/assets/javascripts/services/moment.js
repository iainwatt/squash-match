 
function displayTime() {
    // var time = moment().format('HH:mm:ss');
    // setInterval(displayTime, 1000);
    // return time 
    return moment().format('HH:mm:ss');
}

function basicFormat(t) {
  return moment(t).format('HH.mm')
}
 

 // passing the displayTime() function from moment.js file so we can display a clock, and including the $timeout Angular service
  // var updateTime = function() {
  //   $scope.displayTime = displayTime();
  //   $timeout(function() {
  //     updateTime();
  //   }, 1000);
  // }
  // updateTime();

  // setTimeout(function(){
//   console.log($scope.centre);
// },2000);