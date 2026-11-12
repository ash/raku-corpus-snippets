use nqp; my $bt := nqp::backtrace(nqp::handle(nqp::die(""),"CATCH",nqp::exception)); say nqp::elems($bt)
