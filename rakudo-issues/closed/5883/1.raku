my $skip = "a,b,c"; split(/\,/, $skip) ==> map({ $_ => 1 }) ==> my %skips; say %skips.raku
