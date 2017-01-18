module.exports =
  'my keyword': (args, ctx) ->
    expect(args.exp).toEqual args.act
