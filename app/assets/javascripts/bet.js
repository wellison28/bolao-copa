$(document).ready(function(){
  $('form').on('ajax:complete', function(xhr, status, data){
    $(this).css('background-color', '#9ac59a');
  })
});