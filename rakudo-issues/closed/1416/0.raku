use nqp; my int $n = 42;  { for ^30_000_000 { my $ = nqp::if($n,1) }; say now - ENTER now }
