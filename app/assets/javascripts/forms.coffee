

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
  
  
  
  if $('input#project_keywords').val() != ""
    $('label[for="project_keywords"]').hide()
    
  $('input#project_keywords').on('blur', ->
    if $('input#project_keywords').val() == ""
      $('label[for="project_keywords"]').show()
  )
  
  $('input#project_keywords').on('focus', ->
    $('label[for="project_keywords"]').hide()
  )
  
  
    
  if $('input#project_quantity').val() != ""
    $('label[for="project_quantity"]').hide()
    
  $('input#project_quantity').on('blur', ->
    if $('input#project_quantity').val() == ""
      $('label[for="project_quantity"]').show()
  )
  
  $('input#project_quantity').on('focus', ->
    $('label[for="project_quantity"]').hide()
  )