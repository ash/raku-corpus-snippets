sub foo ( Str:D :$a ) { say $a; }; &foo.assuming( a => "foo" ).( )
