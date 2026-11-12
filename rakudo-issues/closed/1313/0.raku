loop { my $b := $*ARGFILES.read: 1000 or last; say $b }
