Playlist = require '../models/Playlist.model'

class PlaylistController

# curl -H "Content-Type: application/json" -X POST /api/playlists -d '{ "playlist": { ... } }'
  create: (req, res)->

#    res.json {} if params(req.body)

    playlist = new Playlist req.body.playlist
    playlist.save (err)->
      res.json { success: false, message: err } if err
      res.json { success: true, playlist: playlist } unless err

  read: (req, res)->
    Playlist.findOne { _id: req.params.id }, (err, playlist)->
      res.json { success: false, message: err } if err
      res.json { success: true, playlist: playlist } unless err

  update: (req, res)->
#    playlist = new playlist req.body.playlist
#    playlist.findByIdAndUpdate (err)->
#      res.json { success: false, message: err } if err
#      res.json { success: true, playlist: playlist } unless err

  delete: (req, res)->
#

#  params = (req)->
#    !req.requi

module.exports = new PlaylistController()
