

function EloRatingCalc(winner, loser) {

    var winElo = winner.elo;
    var loseElo = loser.elo;
    var qw = Math.pow(10,(winElo/400));
    var ql = Math.pow(10,(loseElo/400)); 
    var lossExpectation = ql/(ql+qw);
    winner.elo += parseInt(kFactor*lossExpectation);
    loser.elo -= parseInt(kFactor*lossExpectation);
}

var kFactor = 15; 