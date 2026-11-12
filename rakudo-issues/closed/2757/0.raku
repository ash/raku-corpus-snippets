multi foo(Any) { say "Any" }
multi foo(Str) { say "Str" }
&foo.candidates[1].wrap( sub (|) { say "Wrapper"; callsame } );
foo("aa");
