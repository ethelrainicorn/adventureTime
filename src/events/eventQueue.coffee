{log} = require '../debug/logger'
{Events} = require 'backbone'
{extend} = require 'underscore'

# Singleton for reading into the events queue
# This serves as an interface between the game and the user agent

EventQueue = extend Events,

  queue: []

  enqueue: (event) ->
    @queue.push(event)

  pop: ->
    @queue.pop()

  empty: -> @queue.length is 0

  process: (event) ->
    @trigger event


module.exports = EventQueue
