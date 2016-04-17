$(document).on 'change', '#character_clan_id', ->
  clan = $(this).val()
  $.get(window.location, clan_id: clan)