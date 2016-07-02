$(document).on 'change', '#character_clan_id', ->
  $.ajax
    url: 'on_clan_change'
    type: 'GET'
    dataType: 'script'
    data: {
      clan_id: $("#character_clan_id option:selected").val()}

$(document).on 'change', '#character_family_id', ->
  $.ajax
    url: 'on_family_or_school_change'
    type: 'GET'
    dataType: 'script'
    data: {
      family_id: $("#character_family_id option:selected").val(),
      school_id: $("#character_basic_school_ids option:selected").val(),      
      clan_id: $("#character_clan_id option:selected").val() }

$(document).on 'change', '#character_basic_school_ids', ->
  $.ajax
    url: 'on_family_or_school_change'
    type: 'GET'
    dataType: 'script'
    data: {
      family_id: $("#character_family_id option:selected").val(),
      school_id: $("#character_basic_school_ids option:selected").val(),      
      clan_id: $("#character_clan_id option:selected").val() }

$(document).on 'change', '.add_skill_form', ->
  name = $('#skill_list li.skill:last input').attr('name')
  index = name.replace /[^0-9]/g, ''
  menu_id = $(this).attr('id')
  multi_skill = ['Wiedza','Rzemiosło','Artysta','Pokaz']
  skill_name = $('option:selected',this).text().replace(/ /g,"_")
  if $(this).hasClass('close_me')
      close_status = 'true'
  else
    close_status = 'false'
  if $(document).find('#skill_' + skill_name).length == 0 or skill_name in multi_skill
    $.ajax
      url: 'on_add_skill'
      type: 'GET'
      dataType: 'script'
      data: {
            select_menu_id: menu_id
            skill_id: $('option:selected',this).val(),
            close_me: close_status
            index: index
          }
  else
    alert 'Umiejętność już istnieje'

$(document).on 'click', '#add_skill_button', ->
  $('#add_skill_form').slideToggle('slow')

$(document).on 'change', 'input#character_agility', ->
  alert 'Zmiana'

$(document).ready ->
  $('ul.form_partial').hide()
  $('ul.active_partial').show()
  $('#prev_form_button').hide()

$(document).on 'click', '#next_form_button', ->
  active_partial = $('ul.active_partial')
  next_partial = $('ul.active_partial').next('ul.form_partial')
  if active_partial.hasClass('first_partial')
    if confirm 'Nie będziesz mógł później zmienić tych ustawień bez resetu dokonanych później zmian. Kontunuować ?'  
      active_partial.removeClass('active_partial').hide()
      next_partial.addClass('active_partial').fadeToggle()
      unless $('#prev_form_button').is(':visible')
        $('#prev_form_button').fadeIn()  
      if next_partial.hasClass('last_partial')
        $('#next_form_button').toggle()
    else
      return false


$(document).on 'click', '#prev_form_button', ->
  active_partial = $('ul.active_partial')
  prev_partial = $('ul.active_partial').prev('ul.form_partial')
  if prev_partial.hasClass('first_partial')
    if confirm 'Powrót do poprzedniej części furmularza wykasuje obecne zmiany. Kontynuować ?'
      active_partial.removeClass('active_partial').hide()
      prev_partial.addClass('active_partial').fadeToggle()
      unless $('#next_form_buttonv').is(':visible')
        $('#next_form_button').fadeIn()
      if prev_partial.hasClass('first_partial')
        $('#prev_form_button').toggle()
    else
      return false