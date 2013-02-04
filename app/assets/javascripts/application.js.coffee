#= require jquery

# Wait for the good ole DOM
$ ->
  # Open external links in a new window
  $('a[rel~=external]').click (event) ->
    event.preventDefault()
    event.stopPropagation()
    window.open(this.href, '_blank')
