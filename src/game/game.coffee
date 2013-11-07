Road = require '../scene/road'

class Game

  constructor: ->

  run: ->
    @currentScene = new Road()
    @currentScene.render()

module.exports = Game
