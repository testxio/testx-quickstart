testx = require 'testx'

exports.config =
  seleniumAddress: 'http://localhost:4444/wd/hub' #can be overriden via the command line option with --seleniumAddress=http://localhost:4444/wd/hub
  specs: ['spec/*']

  capabilities:
    browserName: 'chrome'
    shardTestFiles: false
    maxInstances: 2
    # chromeOptions:
    #   args: ['user-agent=Mozilla/5.0 (iPhone 8.0)']

  jasmineNodeOpts:
    silent: true
    defaultTimeoutInterval: 300000

  rootElement: 'html' # change to the root element of the angular.js app

  params:
    testx:
      xls2testUrl: 'http://docker1.rni.org:4567'
      appName: '[APP_NAME]'
      appVersion: '[APP_VERSION]'
      testDesc: '[TEST_DESCRIPTION]'
      testUser: '[TEST_USER]'
      testVersion: '[TEST_VERSION]'
      testTarget: '[TEST_TARGET]'
      testPlatform: '[TEST_PLATFORM]'
      reportServiceUrl: 'http://testwiki.lrk.org:4567/upload'

  onPrepare: ->
    testx.onPrepare()
    testx.addObjects(require './objects')
    testx.addKeywords(require './keywords')

    # comment next line for angular.js apps
    beforeEach -> browser.ignoreSynchronization = true

    # uncomment next line to clear local storage before each test
    # beforeEach -> browser.executeScript 'window.localStorage.clear();'

  onComplete: ->
    testx.onComplete()
