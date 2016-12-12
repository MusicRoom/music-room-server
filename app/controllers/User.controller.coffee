User = require '../models/User.model'

class UserController
  all: (cb) ->
    User.find cb

module.exports = new UserController()