sub conc-fib($n) { start { $n <= 1 ?? die "oopsy" !! await(conc-fib($n - 2)) + await(conc-fib($n - 1)) } }; await(conc-fib(15))
