Tests for the Booster package

    testAsyncMulti 'Booster Test Group - Individual test, booleanVar is yes', [
      (test, expect) ->
        callback = (error, result) ->

Expect `error` to be null.

          test.isNull error, '`error` should be null: ' + error

Result should be 'some stuff'

          test.equal result, 'some stuff'

Wrap async callbacks in expect so TinyTest knows it ain't over 'til it's over.

        Booster.doStuff yes, expect callback
    ]
