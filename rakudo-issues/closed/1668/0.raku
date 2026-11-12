use nqp; my int $x; my $y = "aaaaa"; { nqp::while($x++ < 100_000, ($y .= subst: :g, 'a', 'a')); say now - ENTER now; }
