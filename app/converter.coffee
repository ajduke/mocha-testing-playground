
exports.rgbToHex = (red, green, blue)->
  redHex= red.toString(16)
  greenHex= green.toString(16)
  blueHex= blue.toString(16)
  return pad(redHex) + pad(greenHex) + pad(blueHex)

exports.hexToRgb = (hex)->
  red= parseInt(hex.substring(0, 2), 16)
  green= parseInt(hex.substring(2, 4), 16)
  blue= parseInt(hex.substring(4, 6), 16)
  return [red, green, blue]


pad= (hex)->
  if hex.length is 1
    "0" + hex
  else
    hex
