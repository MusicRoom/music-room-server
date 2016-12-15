User = require '../models/User.model'

class UserController

  # curl -H "Content-Type: application/json" -X POST /api/users -d '{ "user": { ... } }'
  create: (req, res)->

#    res.json {} if params(req.body)

    user = new User req.body.user
    user.save (err)->
      res.json { success: false, message: err } if err
      res.json { success: true, user: user } unless err

  read: (req, res)->
    User.findOne { _id: req.params.id }, (err, user)->
      res.json { success: false, message: err } if err
      res.json { success: true, user: user } unless err

  update: (req, res)->
#    user = new User req.body.user
#    user.findByIdAndUpdate (err)->
#      res.json { success: false, message: err } if err
#      res.json { success: true, user: user } unless err

  delete: (req, res)->
    #

#  params = (req)->
#    !req.requi

module.exports = new UserController()