class FOO {
	our proto sub foo($) {*};
	multi sub foo(Int $n) {
		my @a = ^$n;
		my $b;
		loop (my $i = 0; $i < $n; $i++) {
			$b = @a[$i]
		}
		$b
	}
	multi sub foo(Str $s) {
		foo($s.Int)
	}
}

say FOO::foo(1_000_000);
say now - INIT now
