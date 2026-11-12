sub foo ( Str :$a ) { say $a; }; &foo.assuming( a => "foo" ).( )
