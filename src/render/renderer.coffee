# Singleton that renders to the screen

Renderer =
  render: (data) ->
    data = data.replace(new RegExp('\n', 'g'), '<br/>')
    data = data.replace(new RegExp('\ ', 'g'), '&nbsp;')
    $('#frame').html data

module.exports = Renderer
