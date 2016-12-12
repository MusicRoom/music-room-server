mongoose = require 'mongoose'
schema = mongoose.Schema

UserSchema = new schema(
  local:
    name: String
    email: String
    password: String

  deezer:
    token: String
    email: String

  facebook:
    token: String
    email: String

  google:
    token: String
    email: String
)

module.exports = mongoose.model 'User', UserSchema