Playlist = require '../models/Playlist.model'

class PlaylistController
  all: (cb) ->
    Playlist.find cb
#	Playlist.find { id: req.body.id }  , (err, user)->

#  create: (req, res)->

module.exports = new PlaylistController()
