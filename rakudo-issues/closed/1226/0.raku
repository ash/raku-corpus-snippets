class F { 
    has @.color[4] = <1 2 3 4>;
}; 
my $f = F.new();
say $f.color
