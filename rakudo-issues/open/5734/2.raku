my $f = "foo"; $f.IO.spurt: "say 42"; my $proc = shell(:in, :out, :err, "script -q /dev/null \"$*EXECUTABLE.absolute()\" \"$f\""); say $proc.out.slurp; say $proc.err.slurp(:close)
