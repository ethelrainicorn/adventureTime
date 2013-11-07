# Singleton for logging and debugging

env = 'dev'

Logger =
  log: (msg) ->
    if env is 'dev'
      console.log "[ #{msg} ]"

module.exports = Logger
