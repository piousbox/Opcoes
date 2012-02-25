
$(document).ready(function() {
  
  var menu_register_can_collapse = true
 
  $(".menu_register_hover").hoverIntent({
    sensitivity: 1,
    interval: 50,
    over: function() {
      $('.menu_register_content').slideDown()
    },
    timeout: 1300,
    out: function() {
      if (menu_register_can_collapse) {
        $('.menu_register_content').slideUp()
      }
    }
  })
  
  $(".menu_register_content").hoverIntent({
    sensitivity: 1,
    interval: 50,
    over: function() {
      menu_register_can_collapse = false
    },
    timeout: 1300,
    out: function() {
      menu_register_can_collapse = true
      $('.menu_register_content').slideUp()
    }
  })
  
  // tour only
  
  var menu_register_can_collapse_2 = true
 
  $(".menu_register_hover_2").hoverIntent({
    sensitivity: 1,
    interval: 50,
    over: function() {
      $('.menu_register_content_2').slideDown()
    },
    timeout: 1300,
    out: function() {
      if (menu_register_can_collapse_2) {
        $('.menu_register_content_2').slideUp()
      }
    }
  })
  
  $(".menu_register_content_2").hoverIntent({
    sensitivity: 1,
    interval: 50,
    over: function() {
      menu_register_can_collapse_2 = false
    },
    timeout: 1300,
    out: function() {
      menu_register_can_collapse_2 = true
      $('.menu_register_content_2').slideUp()
    }
  })
})

$(window).unload( function () {} );