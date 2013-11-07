Renderer = require '../render/renderer'

class Scene

  render: -> Renderer.render @.ascii()

module.exports = Scene
