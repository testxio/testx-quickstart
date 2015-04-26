runner = require 'testx'

describe 'Google search', ->
  it 'should display relevant results', ->
    runner.runExcelSheet 'xls/sample.xls', 'Test'
