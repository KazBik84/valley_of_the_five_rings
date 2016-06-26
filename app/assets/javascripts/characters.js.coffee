$(document).on 'change', '#character_clan_id', ->
  $.ajax
    url: 'on_clan_change'
    type: 'GET'
    dataType: 'script'
    data: {
      clan_id: $("#character_clan_id option:selected").val(),
      school_bonus: $("#character_school_bonus").val(),
      family_bonus: $("#character_family_bonus").val() }

$(document).on 'change', '#character_family_id', ->
  $.ajax
    url: 'on_family_change'
    type: 'GET'
    dataType: 'script'
    data: {
      family_id: $("#character_family_id option:selected").val(),
      family_bonus: $("#character_family_bonus").val(),
      school_bonus: $("#character_school_bonus").val(),
      clan_id: $("#character_clan_id option:selected").val() }

$(document).on 'change', '#character_basic_school_ids', ->
  $.ajax
    url: 'on_school_change'
    type: 'GET'
    dataType: 'script'
    data: {
      school_id: $("#character_basic_school_ids option:selected").val(),
      family_bonus: $("#character_family_bonus").val(),
      school_bonus: $("#character_school_bonus").val(),      
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

$(document).on 'click', '#next_form_button', ->
  active_partial = $('ul.active_partial')
  next_partial = $('ul.active_partial').next('ul')
  active_partial.removeClass('active_partial').fadeToggle()
  next_partial.addClass('active_partial').show()
