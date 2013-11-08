localStorage = require 'localStorage'

class File

  constructor: (data) ->
    @data = data

  save: (data) ->
    localStorage.setItem 'AT_FILE_12345', JSON.stringify(data)

  load: ->
    @data = JSON.parse(localStorage.getItem 'AT_FILE_12345')

module.exports = File
