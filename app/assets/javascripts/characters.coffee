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