$(document).ready ->
  $('div#custom-email-JSON form').submit (event) ->
  event.preventDefault()

  url = $(this).attr('action')
  custom_email = $('div#custom-email-JSON #zombie_email').val()

  $.ajax
  type: 'patch'
  url: url
  data: {zombie: {email: custom_email}}
  dataType: 'json'
  success: (json) ->
    $('#email').text(json.email) #.effect('highlight')
#    $('div#custom-email-JSON').fadeOut() if json.decomp == "Dead (again)"