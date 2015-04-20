
app.controller('PhoneController', ['$scope', '$http', '$routeParams', 'ProfileService', 'CourtService', 'UserService', function($scope, $http, $routeParams, ProfileService, CourtService, UserService){


var size = 140;
setInterval(function(){
  $('.pulse').width(size).height(size);
  size++;
  if(size > 200){
    $('.pulse').css('opacity', $('.pulse').css('opacity')-0.001);
  }
  if(size > 500){
    size = 50;
  $('.pulse').width(size).height(size);
    $('.pulse').css('opacity', '0.3');
  }
},0); 






$http.get('/users/all_users')
 .success(function(response){  
  $scope.all_users = response
// Setting up the 2 button press event functions, then calling add new profile function
  $(document).ready(function(event) {  
    $("div#swipe_like").on( "click", function() {
      swipeLike();
    }); 
    $("div#swipe_dislike").on( "click", function() {
      swipeDislike();
    }); 
    addNewProfile();

  function swipe() {
    Draggable.create("#photo", {
      throwProps:true,
      onDragEnd:function(endX) {
        if(Math.round(this.endX) > 0 ) {
          swipeLike();      
        }
        else {
          swipeDislike();
        }
        console.log(Math.round(this.endX));
    }
    });
  }

  function swipeLike() {    
    var $photo = $("div.content").find('#photo');
    var swipe = new TimelineMax({repeat:0, yoyo:false, repeatDelay:0, onComplete:remove, onCompleteParams:[$photo]});
    swipe.staggerTo($photo, 0.8, {bezier:[{left:"+=400", top:"+=300", rotation:"60"}], ease:Power1.easeInOut});
    addNewProfile();
  }

  function swipeDislike() { 
    var $photo = $("div.content").find('#photo');
    var swipe = new TimelineMax({repeat:0, yoyo:false, repeatDelay:0, onComplete:remove, onCompleteParams:[$photo]});
    swipe.staggerTo($photo, 0.8, {bezier:[{left:"+=-350", top:"+=300", rotation:"-60"}], ease:Power1.easeInOut});
    addNewProfile();
  }

  function remove(photo) {
    $(photo).remove();
  }

  function addNewProfile() {

    var names = []
    var second =[]
    var elo = []
    var photos = []
    var matches = []
    for (i = 0; i < response.length; i++ ) {
     elo.push(response[i].elo);
     names.push(response[i].first_name);
     second.push(response[i].last_name)
     photos.push(response[i].user_image.url);
     matches.push(response[i].losses + response[i].wins)
    }


    function random(response) {
      return Math.floor(Math.random() * response.length) + 1
    }
    var random = random(response);
    var names = names[random]
    var second = second[random]
    var elo = elo[random]
    var photos = photos[random]
    var matches = matches[random]


    $("div.content").prepend('<div class="photo" id="photo" style="background-image:url('+photos+')">'
      + '<span class="meta">' 
      + '<div class="hack538"></div>'
      + '<p>'+names+' '+second+'</p>' 
      + '<span class="distance">ELO ' +elo+'</span>'    
      + '</div>');


    // $("div.tinder-info").prepend('<div class="td-info">'
    //   + '<h2>' + names + '</h2>'
    //   + '<p>ELO: ' +elo+ '</p>'  
    //   + '<p>matches: '+matches+'</p>'
    //   + '</div>');


      swipe();
  }

  });

});


}])