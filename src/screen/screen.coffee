config   = require '../config'
{log}    = require '../debug/logger'
Renderer = require '../render/renderer'
File     = require '../save/file'

class Screen

  ENDLINE: '\n'

  constructor: ->
    @file = new File()
    @file.load()
    @position = @file.data

  position:
    x: 1
    y: 1
    facing: 'right'

  asciiAt: (x,y) ->
    if x == @position.y and y == @position.x
      '@'
    else
      ' '

  saveFile: ->
    @file.save @position

  processEvent: (event) ->
    @position.y++ if event == 'down'
    @position.y-- if event == 'up'
    @position.x++ if event == 'right'
    @position.x-- if event == 'left'
    @saveFile()   if event == 'e'

  render: ->
    ascii = ""
    for i in [0...config.screen.height]
      for j in [0...config.screen.width]
        if i == 0
          if j == 0
            ascii += "┌"
          else if j == config.screen.width-1
            ascii += "┐"
          else
            ascii += "─"
        else if i == config.screen.height-1
          if j == 0
            ascii += "└"
          else if j == config.screen.width-1
            ascii += "┘"
          else
            ascii += "─"
        else
          if j == 0
            ascii += "│"
          else if j == config.screen.width-1
            ascii += "│"
          else
            ascii += @asciiAt i, j
      ascii += @ENDLINE

    Renderer.render ascii

module.exports = Screen
