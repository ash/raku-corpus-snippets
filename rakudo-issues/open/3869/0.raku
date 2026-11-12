sub foo ( :$a ) { say $a; }; &foo.assuming( a => "foo" ).( )
