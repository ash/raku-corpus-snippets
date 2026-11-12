use nqp; my $p := nqp::getstdin; dd nqp::eoffh($p); dd nqp::readfh($p, buf8.new, 100000); dd nqp::eoffh(nqp::getstdin);
