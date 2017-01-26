reporters = require 'testx-jasmine-reporters'

exports.config =
  directConnect: true
  specs: ['spec/*']

  capabilities:
    browserName: 'chrome'
    shardTestFiles: false
    count: 1
    maxInstances: 10
    chromeOptions:
      args: ['no-sandbox']


  framework: 'jasmine'
  jasmineNodeOpts:
    silent: true
    defaultTimeoutInterval: 300000
    includeStackTrace: false

  baseUrl: 'http://google.com'

  onPrepare: ->
    require 'testx'
    testx.objects.add require './objects'
    testx.objects.add require 'testx-standard-objects'
    testx.keywords.add(require './keywords')

    reporters()

    # comment next line for angular.js apps
    beforeEach -> browser.ignoreSynchronization = true
