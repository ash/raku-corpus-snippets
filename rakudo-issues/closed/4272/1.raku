use nqp; my $pair := nqp::create(Pair); nqp::bindattr($pair,Pair,"\$!value",nqp::add_i(nqp::getattr(($pair := Pair.new(42,0)),Pair, "\$!value"),1)); say $pair
