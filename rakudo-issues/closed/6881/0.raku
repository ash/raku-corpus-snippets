my $p = shell('echo shell-ok', :out, :err);
say 'stdout=' ~ $p.out.slurp(:close).chomp.raku;
say 'stderr=' ~ $p.err.slurp(:close).raku;
say 'exit=' ~ $p.exitcode;
