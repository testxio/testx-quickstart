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
  rootElement: 'html' # change to the root element of the angular.js app

  onPrepare: ->
    testx = require 'testx'
    testx.objects.add 'objects/objects.csv'
    testx.objects.add require 'testx-standard-objects'
    testx.keywords.add(require './keywords')
    testx.keywords.add(require 'testx-pdf-keywords')

    reporters()

    # comment next line for angular.js apps
    beforeEach -> browser.ignoreSynchronization = true

    # uncomment next line to clear local storage before each test
    # beforeEach -> browser.executeScript 'window.localStorage.clear();'
