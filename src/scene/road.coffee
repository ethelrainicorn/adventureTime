Scene = require './scene'

class Road extends Scene

  constructor: (@options) ->
    console.log 'whatever'

  ascii: ->
    """
    ┌───────────────────────────────────────────────────────────────────────────┐
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    │                                                                           │
    └───────────────────────────────────────────────────────────────────────────┘
    """


module.exports = Road