 
function displayTime() {
    var time = moment().format('HH:mm:ss');
    $('#clock').html(time);
    setInterval(displayTime, 1000);
    return time 
}


 
