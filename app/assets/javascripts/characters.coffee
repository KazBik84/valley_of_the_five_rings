$(document).on 'change', '#character_clan_id', ->
  $.ajax
    url: 'on_clan_change'
    type: 'GET'
    dataType: 'script'
    data: {
      clan_id: $("#character_clan_id option:selected").val() }