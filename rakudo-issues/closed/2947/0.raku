my $p = start { say 1 / 0 };
sink $p;
say 'done';
