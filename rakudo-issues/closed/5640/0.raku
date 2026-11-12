=begin code
my %matches;
my %sets;

for $file.lines -> $line {
    my $pairing;
    my ($p1, $p2) = $pairing.words;
    %sets{$p1} += $p2;
}

my @sorted = @names.sort({ %sets{$_} }).sort({ %matches{$_} }).reverse;

for @sorted -> $n {
    my $match-noun = %matches{$n} == 1 ?? 'match' !! 'matches';
    my $set-noun   = %sets{$n} == 1 ?? 'set' !! 'sets';
    say "$n has won %matches{$n} $match-noun and %sets{$n} $set-noun";
}
=end code
