express = require 'express'
router = express.Router

mongoose = require 'mongoose'
TrackController = require '../controllers/Track.controller'

# GET /tracks

router.get '/', (req, res, next) ->
  TrackController.all

module.exports = router
