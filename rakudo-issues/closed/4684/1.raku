my $cpt = 0; for ^20 {my %h = (a => 1, b => 2, c => 3, d => 4); for %h.keys -> $k {$cpt++; if %h{$k} % 2 == 0 {%h<e> = 5; %h{$k}:delete}}}; say $cpt
