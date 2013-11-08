config = require '../config'
Events = require '../events/eventQueue'
Screen = require '../screen/screen'
{log}  = require '../debug/logger'
_      = require 'underscore'
$      = require '../vendor/jquery'

class Game

  constructor: ->
    @gameLoop = @gameLoop.bind @

  # Where the magic happens
  gameLoop: ->
    @processEvents()
    @buildScene()
    @draw()
    _.delay(@gameLoop, config.refreshRate)

  attachEventListeners: ->
    $('body').on 'keypress', @addKeyActionToEventQueue

  addKeyActionToEventQueue: (e) ->
    key =
      switch e.keyCode
        when 119 then 'up'
        when 115 then 'down'
        when 100 then 'right'
        when 97  then 'left'
        when 13  then 'enter'
        when 101 then 'e'
    Events.enqueue key

  run: ->
    log "Running game..."
    #Events.on 'down', -> log 'down!!!!'
    @attachEventListeners()
    @gameLoop() # Start game loop

  draw: ->
    @screen.render()

  processEvents: ->
    while !Events.empty()
      Events.process Events.pop()


  buildScene: ->
    @screen = new Screen()

module.exports = Game
