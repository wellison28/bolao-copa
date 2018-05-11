$(document).ready(function(){
  document.addEventListener("turbolinks:load", function() {
    $('.bet.new input[type="submit"]').on('click', function(){
      $(this).parents('form').css('background-color', '#9ac59a');
    })
  })
});