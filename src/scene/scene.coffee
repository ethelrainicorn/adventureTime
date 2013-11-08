config   = require '../config'
{log}    = require '../debug/logger'
Renderer = require '../render/renderer'

class Scene

  ENDLINE: '\n'

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
            ascii += ' '#@sceneData[i-1][j-1]
      ascii += @ENDLINE

    Renderer.render ascii

module.exports = Scene
