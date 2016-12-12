mongoose = require 'mongoose'
schema = mongoose.Schema

PlaylistSchema = new schema(

  name: String
  owner: [
    type: schema.ObjectId
    ref: 'User'
  ]
  followers: [
    type: schema.ObjectId
    ref: 'User'
  ]
  tracks: [
    type: schema.ObjectId
    ref: 'Track'
  ]

)

module.exports = mongoose.model 'Playlist', PlaylistSchema