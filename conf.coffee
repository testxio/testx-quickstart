reporters = require '@testx/reporters-jasmine'

exports.config =
  directConnect: true
  specs: ['spec/*']

  capabilities:
    browserName: 'chrome'
    shardTestFiles: false
    count: 1
    maxInstances: 10
    chromeOptions:
      args: ['--headless', '--no-sandbox', '--window-size=1024,800', '--disable-gpu']


  framework: 'jasmine'
  jasmineNodeOpts:
    silent: true
    defaultTimeoutInterval: 300000
    includeStackTrace: false

  baseUrl: 'http://google.com'

  onPrepare: ->
    require 'testx'
    testx.objects.add require './objects'
    testx.objects.add require '@testx/objects-standard'
    testx.keywords.add(require './keywords')

    reporters()

    # comment next line for angular.js apps
    beforeEach -> browser.ignoreSynchronization = true
