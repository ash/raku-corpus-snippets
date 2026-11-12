role SAN { has $.san; method SAN { $.san } }; my $start = now; for ^1000 { my $w = "a" but SAN.new(san => "bleh" ~ $_); }; say now - $start
