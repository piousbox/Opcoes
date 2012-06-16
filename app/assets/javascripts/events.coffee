

$(document).ready ->
  $('a.top').on('click', ->
    $('html, body').animate({scrollTop: 0}, 1000);
  )

  $('a.how_it_works').on('click', ->
    $('html, body').animate({scrollTop: $("a[name='how_it_works']").offset().top}, 1000);
  )

  $('a.pricing').on('click', ->
    $('html, body').animate({scrollTop: $("a[name='pricing']").offset().top}, 1000);
  )