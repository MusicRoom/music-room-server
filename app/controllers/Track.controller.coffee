Track = require '../models/Track.model'

class TrackController
  # curl -H "Content-Type: application/json" -X POST /api/tracks -d '{ "track": { ... } }'
  create: (req, res)->

#    res.json {} if params(req.body)

    track = new Track req.body.track
    track.save (err)->
      res.json { success: false, message: err } if err
      res.json { success: true, track: track } unless err

  read: (req, res)->
    Track.findOne { _id: req.params.id }, (err, track)->
      res.json { success: false, message: err } if err
      res.json { success: true, track: track } unless err

  update: (req, res)->
#    track = new track req.body.track
#    track.findByIdAndUpdate (err)->
#      res.json { success: false, message: err } if err
#      res.json { success: true, track: track } unless err

  delete: (req, res)->
#

#  params = (req)->
#    !req.requi

module.exports = new TrackController()