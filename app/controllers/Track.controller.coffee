Track = require '../models/Track.model'

class TrackController
  all: (cb) ->
    Track.find cb

module.exports = new TrackController()