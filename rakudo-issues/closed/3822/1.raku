say "===";

my $test = MyPositional.new;

say $test[16];

say "---";

say $test[32];

say "---";

printf "{$test[16]}\n";

say "---";

printf "%d\n", $test[16];

say "---";

my $foo = "{$test[17]}";

say "===";
