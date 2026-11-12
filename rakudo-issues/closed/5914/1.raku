use v6.e.PREVIEW; say grammar { token TOP { <.return> }; token return { .+ } }.subparse("foo")
