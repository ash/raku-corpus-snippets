role SAN[Str $san] { method SAN { $san } }; my $start = now; for ^1000 { my $w = "a" but SAN["bleh" ~ $_]; }; say now - $start
