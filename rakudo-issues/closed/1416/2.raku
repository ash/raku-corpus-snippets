use nqp; my int $n = 42;  { for ^30_000_000 { my $ = nqp::if(nqp::isne_i($n,0),1) }; say now - ENTER now }
