$(document).ready(function() {

$('#origins').css('border', '2px solid orange');

$('#pineapple-photo').css('border', '8px dotted yellow');

$('#quotes').css('border', '2px solid orange');

$('#links').css('border', '2px solid orange');

$('img').attr('src', 'pineapple.jpg');
$('img').delay(500).fadeOut(800, function(){
  $(this).attr('src', 'bwpineapp.jpg').fadeIn(800);
});


$('p').click(function() {
  $(this).slideUp();
});


$('body').keydown(function() {
  $('#head').css('color', 'yellow').delay(600);   
});


$('html').keypress(function(){
  $(this).toggleClass('orange');
});

});





















