jQuery ->
  families = $('#character_family_id').html()
  schools = $('#character_basic_school_ids').html()
  $('#character_clan_id').change ->
    clan = $('#character_clan_id :selected').text()
    clan_families = $(families).filter("optgroup[label='#{clan}']").html()
    clan_schools = $(schools).filter("optgroup[label='#{clan}']").html()
    if clan_families
      $('#character_family_id').html(clan_families)
      $('#character_family_id').parent().show()
      $('#character_basic_school_ids').html(clan_schools)
      $('#character_basic_school_ids').parent().show()
    else
      $('character_family_id').empty()
      $('#character_family_id').parent().hide()
      $('character_basic_school_ids').empty()
      $('#character_basic_school_ids').parent().hide()      
