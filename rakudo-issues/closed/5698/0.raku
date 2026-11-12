my $limit = 10000;

my $code;

for (0..$limit) -> $depth {
    $code ~= 'for ^1 -> $var' ~ $depth ~ ' { say $var' ~ $depth ~ ";\n";
    LAST { $code ~= '}' for 0..$limit };
}

"insane.raku".IO.spurt($code);

say "done";
