express = require 'express'
router = express.Router()

mongoose = require 'mongoose'
TrackController = require '../controllers/Track.controller'


router.post '/', TrackController.create

router.get '/:id', TrackController.read

module.exports = router
