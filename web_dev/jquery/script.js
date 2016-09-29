$(document).ready(function() {


$('img').attr('src', 'pineapple.jpg');
$('img').delay(500).fadeOut(800, function(){
  $(this).attr('src', 'bwpineapp.jpg').fadeIn(800);
});

$('html').keypress(function(){
  $(this).toogleClass('blue');
});

});





















