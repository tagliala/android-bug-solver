$ ->
  WebFont.load
    google:
      families: ['Oswald', 'Roboto:400,700']
    active: ->
      $('.slabme').slabText()
