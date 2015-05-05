express= require('express')
app= express()

converter= require('./converter')

app.get('/rgbToHex', (req, res)->
  red= parseInt(req.query.red, 10)
  green= parseInt(req.query.green, 10)
  blue= parseInt(req.query.blue, 10)

  val= converter.rgbToHex(red, green, blue)
  res.send(val)
)

app.get('/hexToRgb', (req, res)->
  hex = req.query.hex
  rgb = converter.hexToRgb(hex)

  res.send(JSON.stringify(rgb))

)

server= app.listen(3000, (host, port)->
  host= server.address()
  console.log 'listening on ' + JSON.stringify host

)