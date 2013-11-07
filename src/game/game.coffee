Road   = require '../scene/road'
{log}  = require '../debug/logger'
_      = require 'underscore'

class Game

  constructor: ->
    @gameLoop = @gameLoop.bind @

  config:
    framerate: 100

  run: ->
    log "Running game..."
    @currentScene = new Road()
    @gameLoop() # Start game loop

  draw: ->
    @currentScene.render()

  processEvents: ->
    #TODO

  buildScene: ->
    #TODO

  gameLoop: ->
    @processEvents()
    @buildScene()
    @draw()
    _.delay(@gameLoop, @config.framerate)

module.exports = Game
