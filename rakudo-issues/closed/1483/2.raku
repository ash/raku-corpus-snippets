my $p = run :out(Nil), $*EXECUTABLE, ‘-e’, ‘for 1..ↂ {last if $++ > 1000; $^i%%$_&&put "$_ "for ^$i};say()’; say $p.signal
