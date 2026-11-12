my $hash = %(
    wallet   => 100,
    gave     =>   0,
    received =>   0,
    );

for ^1 { $hash<wallet gave> Z+= <-1 1> };

dd $hash;
