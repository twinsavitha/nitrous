console.log("hey");
$(document).ready ->
  $('#show-bio').click(event) ->
    $(this).hide()
    $('.field#bio').show()

