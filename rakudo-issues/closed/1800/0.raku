my regex suffix { <[dhms]> };

my %unit-multipliers = 's' => 1;

put <s>»\
    .match(/<suffix>/)».hash\
    .map(-> % ( Str(Any) :$suffix ) { %unit-multipliers{$suffix} });
