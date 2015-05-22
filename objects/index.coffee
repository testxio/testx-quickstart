_ = require 'lodash'

module.exports = ->
  _.assign objects, (require './page_1')
  _.assign objects, (require './page_2')

objects =
  #sample objects (google.com)

  "resultLink":
    locator: "css"
    value: "li.g a"
