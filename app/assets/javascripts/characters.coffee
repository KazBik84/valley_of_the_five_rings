jQuery ->
  families = $('#character_family_id').html()
  $('#character_clan_id').change ->
    clan = $('#character_clan_id :selected').text()
    clan_families = $(families).filter("optgroup[label='#{clan}']").html()
    if clan_families
      $('#character_family_id').html(clan_families)
      $('#character_family_id').parent().show()
    else
      $('character_family_id').empty()
      $('#character_family_id').parent().hide()