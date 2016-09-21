testx = require 'testx'
reporters = require 'testx-jasmine-reporters'

exports.config =
  directConnect: true
  specs: ['spec/*']

  capabilities:
    browserName: 'chrome'
    shardTestFiles: false
    maxInstances: 2
    chromeOptions:
      args: ['no-sandbox']


  framework: 'jasmine'
  jasmineNodeOpts:
    silent: true
    defaultTimeoutInterval: 300000
    includeStackTrace: false

  baseUrl: 'http://google.com'
  rootElement: 'html' # change to the root element of the angular.js app

  params:
    testx:
      logScript: true
      actionTimeout: 4000

  onPrepare: ->
    # testx.addObjects(require './objects')
    testx.objects.add 'objects/objects.csv'
    testx.keywords.add(require './keywords')
    testx.keywords.add(require 'testx-pdf-keywords')

    # reporters()

    # comment next line for angular.js apps
    beforeEach -> browser.ignoreSynchronization = true

    # uncomment next line to clear local storage before each test
    # beforeEach -> browser.executeScript 'window.localStorage.clear();'
