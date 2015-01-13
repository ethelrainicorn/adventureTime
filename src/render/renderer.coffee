# Singleton that renders to the screen

Renderer =

  # Process current scene into ASCII and write to the screen
  render: (sceneData) ->
    # Replace endlines with <br> and space with HTML spaces
    sceneData = sceneData.replace(new RegExp('\n', 'g'), '<br/>')
    sceneData = sceneData.replace(new RegExp('\ ', 'g'), '&nbsp;')
    $('#frame').html sceneData

module.exports = Renderer
                                                                                                                                                                                                                                                                                                                                                                                                      
