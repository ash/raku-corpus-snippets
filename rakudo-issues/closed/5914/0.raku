say grammar { token TOP { <.return> }; token return { .+ } }.subparse("foo")
