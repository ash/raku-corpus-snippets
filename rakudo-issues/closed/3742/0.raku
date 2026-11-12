my $c; for 1..2000 { my $p = $*CWD.child("foo.txt{$c++}").open(:w); $p.lock; $p.unlock; $p.lock; $p.close; }; say "DONE"
