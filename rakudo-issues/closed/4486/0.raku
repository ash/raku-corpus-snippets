my $foo is default(Nil);
$foo = 'bar'; try   let $foo  =        Nil;      say $foo; # Nil
$foo = 'bar'; try { let $foo .=      &{ Nil } }; say $foo; # Nil
$foo = 'bar'; try { let $foo  = $foo.&{ Nil } }; say $foo; # bar
