

$(document).ready ->

  if $('input#project_url').val() != ""
    $('label[for="project_url"]').hide()

  $('input#project_url').on('blur', ->
    if $('input#project_url').val() == ""
      $('label[for="project_url"]').show()
  )
  
  $('input#project_url').on('focus', ->
    $('label[for="project_url"]').hide()
  )