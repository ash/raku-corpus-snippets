my $argfiles = IO::CatHandle.new(@*ARGS); .say for $argfiles.lines
