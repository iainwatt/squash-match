

function fuckHelpMe (obj, arr) {
    for (var i = 0; i < obj.length; i++) { 
        obj[i].dist = arr[i];
    }
    return obj;
}