express = require 'express'

app = express()

app.get '', (req, res) =>
	res.sendfile( __dirname + '/public/index.html')

app.use express.static(__dirname + '/public')

app.listen 1337