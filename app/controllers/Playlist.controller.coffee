Playlist = require '../models/Playlist.model'

class PlaylistController
  all: (cb) ->
    Playlist.find cb

module.exports = new PlaylistController()