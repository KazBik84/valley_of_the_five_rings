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
  family_name = $("#character_family_id option:selected").text()
  family_name = family_name.split(' ')[0]
  $('#chosen_family_name').html(family_name)
  minus_attr_names = ['#agility_minus', '#intelligence_minus',
                     '#reflexes_minus', '#awareness_minus',
                     '#stamina_minus', '#willpower_minus',
                     '#strength_minus', '#perception_minus',
                     '#void_minus' ]
  $.each minus_attr_names, (index, attr_name) ->
    $(attr_name).hide()

$(document).on 'click', '#next_form_button', ->
  active_partial = $('ul.active_partial')
  next_partial = $('ul.active_partial').next('ul.form_partial')
  if active_partial.hasClass('first_partial')
    if !$('#character_name').val()
      alert 'Proszę podać imię postaci.'
      return false
    if confirm 'Nie będziesz mógł później zmienić tych ustawień bez resetu dokonanych później zmian. Kontunuować ?'  
    else
      return false    
  name = $('#character_name').val()
  $('#chosen_character_name').html(name)    
  active_partial.removeClass('active_partial').hide()
  next_partial.addClass('active_partial').fadeToggle()
  unless $('#prev_form_button').is(':visible')
    $('#prev_form_button').fadeIn()  
  if next_partial.hasClass('last_partial')
    $('#next_form_button').toggle()


$(document).on 'click', '#prev_form_button', ->
  active_partial = $('ul.active_partial')
  prev_partial = $('ul.active_partial').prev('ul.form_partial')
  if prev_partial.hasClass('first_partial')
    if confirm 'Powrót do poprzedniej części furmularza wykasuje obecne zmiany. Kontynuować ?'
    else
      return false
  active_partial.removeClass('active_partial').hide()
  prev_partial.addClass('active_partial').fadeToggle()
  unless $('#next_form_buttonv').is(':visible')
    $('#next_form_button').fadeIn()
  if prev_partial.hasClass('first_partial')
    $('#character_name').val('')
    $('#prev_form_button').toggle()

$(document).on 'click', '.attr_plus_button', ->
  attr_name = $(this).attr('id').replace '_plus', ''
  attr_val = '#'+attr_name + '_value'
  base_value = '#character_base_'+ attr_name+'_value'
  $(attr_val).html(parseInt($(attr_val).html(), 10)+1)
  if parseInt($(attr_val).text(), 10) > parseInt($(base_value).val(), 10)
    $('#'+ attr_name + '_minus').show()
  if parseInt($(attr_val).text(), 10) == 10
    $('#'+ attr_name + '_plus').hide()
  $('#exp_val').html( parseInt($('#exp_val').text(), 10) -  parseInt($(attr_val).text(), 10) * 4 + 'PP')

$(document).on 'click', '.attr_minus_button', ->
  attr_name = $(this).attr('id').replace '_minus', ''
  attr_val = '#'+attr_name + '_value'
  base_value = '#character_base_'+ attr_name+'_value'
  $(attr_val).html(parseInt($(attr_val).html(), 10)-1)
  if parseInt($(attr_val).text(), 10) == parseInt($(base_value).val(), 10)
    $('#'+ attr_name + '_minus').hide()
  if parseInt($(attr_val).text(), 10) < 10
    $('#'+ attr_name + '_plus').show()  
  $('#exp_val').html( parseInt($('#exp_val').text(), 10) +  (parseInt($(attr_val).text(), 10)+1) * 4 + 'PP')
