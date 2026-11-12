my $p = start { sleep 0.01; 10 }; await Promise.anyof(Promise.in(0),$p); $p.status.say;
