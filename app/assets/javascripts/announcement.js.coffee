$(document).on 'click', '.create_comment_button', ->
  $(this).prevAll('div.create_comment:first').slideToggle('slow')
  $(this).toggleClass('red_sign')

$(document).on 'click', '.show_comment_button', ->
  $(this).prevAll('div.show_comment:first').slideToggle('slow')
  $(this).toggleClass('red_sign')