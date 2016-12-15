express = require 'express'
bodyParser = require 'body-parser'
mongoose = require 'mongoose'
port = process.env.PORT or 4242

userRouter = require './app/routes/User.route'
playlistRouter = require './app/routes/Playlist.route'
trackRouter = require './app/routes/Track.route'

app = express()
app.use bodyParser.urlencoded({ extended: false })
app.use bodyParser.json()

mongoose.connect "mongodb://db/musicroom"

app.listen port

app.use '/api/users', userRouter
app.use '/api/playlists', playlistRouter
app.use '/api/tracks', trackRouter

