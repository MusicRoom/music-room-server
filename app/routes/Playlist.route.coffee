express = require 'express'
router = express.Router()

mongoose = require 'mongoose'
PlaylistController = require '../controllers/Playlist.controller'

# GET /playlists

router.post '/', PlaylistController.create

router.get '/:id', PlaylistController.read

module.exports = router