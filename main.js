/* global $ */

function showBoard() {
  $('#start').hide();
  $('#board').show();
}

function jump() {
  
}

$(document).ready(function() {
 $('#start').click(function() {
    showBoard();
 });
 
 $('#jump').mousedown(function() {
    $('#batman').css('bottom', '175px');
    $('#weird').hide();
 });
 
 var count = 1;
 
  $('#jump').mouseup(function() {
    $('#batman').css('bottom', '60px');
    $('#weird').show();
 });
 
 $("body").keydown(function(e) {
    if(e.keyCode == 37) { // left
      $("#game").animate({
        backgroundPosition: "+=980"
      });
    }
    else if(e.keyCode == 39) { // right
      $("#game").animate({
        backgroundPosition: "-=980"
      });
    } else if(e.keyCode == 49) {
        jump();
    }
  });
});