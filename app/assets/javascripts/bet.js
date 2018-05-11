$(document).ready(function(){
  $('input[type="submit"]').on('click', function(){
    $(this).parents('form').css('background-color', '#9ac59a');
  })
});