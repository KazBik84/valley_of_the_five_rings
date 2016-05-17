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

$(document).on 'change', '#add_skill_form', ->
  skill_name = $('#character_skill_of_objects option:selected').text().replace(/ /g,"_")
  if $(document).find('#skill_' + skill_name).length == 0 
    $.ajax
      url: 'on_add_skill'
      type: 'GET'
      dataType: 'script'
      data: {
        skill_id: $('#character_skill_of_objects option:selected').val()
      }
  else 
    alert 'Umiejętność już istnieje'

$(document).on 'click', '#add_skill_button', ->
  $('#add_skill_form').slideToggle('slow')