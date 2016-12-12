mongoose = require 'mongoose'
schema = mongoose.Schema

TrackSchema = new schema(

  name: String
  id_deezer: Number
  duration: Number
  artist: String
  album: String

)

module.exports = mongoose.model 'Track', TrackSchema