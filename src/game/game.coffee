Road   = require '../scene/road'
{log}  = require '../debug/logger'
_      = require 'underscore'

class Game

  constructor: ->
    @renderLoop = @renderLoop.bind(@)

  config:
    framerate: 100

  run: ->
    @currentScene = new Road()
    @renderLoop()

  renderLoop: ->
    log "running render loop"
    @currentScene.render()
    _.delay(@renderLoop, @config.framerate)

module.exports = Game
