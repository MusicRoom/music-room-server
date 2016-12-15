express = require 'express'
router = express.Router()

mongoose = require 'mongoose'
PlaylistController = require '../controllers/Playlist.controller'

# GET /playlists

router.get '/', (req, res, next) ->
  PlaylistController.all

module.exports = router