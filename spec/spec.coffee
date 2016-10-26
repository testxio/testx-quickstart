describe 'Google search', ->
  it 'should display relevant results (testx)', ->
    testx.run 'scripts/test.testx'
  it 'should display relevant results (xlsx)', ->
    testx.run 'scripts/sample.xlsx', 'pdf'
