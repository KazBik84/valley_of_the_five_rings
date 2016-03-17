$ ->
  # Stick the #nav to the top of the window
  nav = $('#nav')
  navHomeY = nav.offset().top
  isFixed = false
  $w = $(window)
  $w.scroll ->
    scrollTop = $w.scrollTop()
    shouldBeFixed = scrollTop > navHomeY
    if shouldBeFixed and !isFixed
      nav.css
        position: 'fixed'
        top: 0
        left: nav.offset().left
        width: nav.width()
      isFixed = true
    else if !shouldBeFixed and isFixed
      nav.css position: 'static'
      isFixed = false
    return
  return

$(document).on 'click', '.side_button', ->
  $('#root_panel').toggle( { direction: 'right' }, 1000 )
  $(this).toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#close_panel', ->
  $('.side_button').toggle( { direction: 'right' }, 1000 )
  $('#root_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#clans_panel_button', ->
  $('#root_panel').toggle( { direction: 'right'}, 1000)
  $('#clans_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#close_clans_panel', ->
  $('#clans_panel').toggle( { direction: 'right'}, 1000)
  $('#root_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#spells_panel_button', ->
  $('#root_panel').toggle( { direction: 'right'}, 1000)
  $('#spells_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#close_spells_panel', ->
  $('#spells_panel').toggle( { direction: 'right'}, 1000)
  $('#root_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#fire_spells_panel_button', ->
  $('#spells_panel').toggle( { direction: 'right'}, 1000)
  $('#fire_spells_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#close_fire_spells_panel', ->
  $('#fire_spells_panel').toggle( { direction: 'right'}, 1000)
  $('#spells_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#water_spells_panel_button', ->
  $('#spells_panel').toggle( { direction: 'right'}, 1000)
  $('#water_spells_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#close_water_spells_panel', ->
  $('#water_spells_panel').toggle( { direction: 'right'}, 1000)
  $('#spells_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#skills_panel_button', ->
  $('#skills_panel').toggle( { direction: 'right'}, 1000)
  $('#root_panel').toggle( { direction: 'left'}, 500 )

$(document).on 'click', '#close_skills_panel', ->
  $('#skills_panel').toggle( { direction: 'right'}, 1000)
  $('#spells_panel').toggle( { direction: 'left'}, 500 )  