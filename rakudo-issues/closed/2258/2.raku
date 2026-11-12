use Test; use nqp; my $exp := Int & Cool & Date; my $giv := 42; nqp::istype($exp, Junction:D) ?? ok ?($exp.THREAD: { $giv.isa: $_  }) !! isa-ok $giv, $exp
