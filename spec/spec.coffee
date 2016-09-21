testx = require 'testx'
yaml = require 'testx-yaml-parser'

describe 'Google search', ->
  it 'should display relevant results (XLSX)', ->
    testx.runScript yaml.parse 'yaml/test.testx'
  it 'should display relevant results (YAML)', ->
    testx.runExcelSheet 'xls/sample.xlsx', 'pdf'
  it 'should display relevant results (CoffeeScript, experimental)', testx.with ->
    @goTo
      url: '/'
    @set
      searchBox: 'sample pdf files'
      searchBtn: ''
    @checkInPdf
      link: 'pdfLink'
      expect1: 'D e n t i s t s'
      expect2: 'P o l i t i c i a n s'
