my %h;
for ^100_000 { %h{$_} = $_ };

my $t1 = now;
for ^5000 { %h.pick };
say now - $t1;
