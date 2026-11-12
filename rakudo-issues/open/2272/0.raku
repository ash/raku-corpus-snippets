"/tmp/fooo42".IO.spurt: "a\nb\nc"; my $*IN = "/tmp/fooo42".IO.open; dd $*IN.get; $*IN.close; dd $*IN.get
