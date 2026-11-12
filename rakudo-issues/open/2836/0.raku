my $i = 0; loop { last if $i == 7; $i++; LAST say $i }  # 7
sub s {my $i = 0; loop { last if $i == 7; $i++; LAST say $i } }; s  # 0
