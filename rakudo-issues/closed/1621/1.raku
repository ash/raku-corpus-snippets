my $p = start { sleep 0.1; 10 }; await Promise.anyof(Promise.in(0),$p); $p.status.say;
