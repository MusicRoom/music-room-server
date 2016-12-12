express = require 'express'
router = express.Router

mongoose = require 'mongoose'
UserController = require '../controllers/User.controller'

# GET /users

router.get '/', (req, res, next) ->
  UserController.all

module.exports = router
