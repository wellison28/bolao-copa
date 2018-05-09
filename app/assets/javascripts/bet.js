$(document).ready(function(){
  for (var i = 0; i < 10; i++) {
    $('.form-' + i).on('ajax:complete', function(xhr, status, data){
      $(this).css('background-color', '#9ac59a');
    })
  }
});