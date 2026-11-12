my @a = <a b c>;

my $text;
$text ~= do for @a { $_ }
say "Output\n*" ~ $text ~ '*';

$text = Any;
do for @a { $text ~= $_ }
say "Expected\n*" ~ $text ~ '*';

say $*RAKU.compiler.version;

=finish
Output
*a b c*
Expected
*abc*
v2025.02
