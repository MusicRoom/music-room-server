express = require 'express'
router = express.Router()

mongoose = require 'mongoose'
UserController = require '../controllers/User.controller'
User = require '../models/User.model'

# GET /users

router.post '/', UserController.create

router.get '/:id', UserController.read

module.exports = router
