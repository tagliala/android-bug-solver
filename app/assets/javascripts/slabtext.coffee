initializeOnEvent =
  if window.Turbolinks? and window.Turbolinks.supported
    'turbolinks:load'
  else
    'ready'

$(document).on initializeOnEvent, ->
  WebFont.load
    google:
      families: ['Oswald', 'Roboto:400,700']
    active: ->
      $('.slabme').slabText()
