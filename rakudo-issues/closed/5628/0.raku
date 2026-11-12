use experimental :rakuast;
use RakuAST::Deparse::Highlight;
my @warnings;
my $source = $=finish;
my $hilited;
try {
    $hilited = highlight($source, 'HTML');
}
with $! {
    @warnings.push( 'Error when highlighting ｢' ~
        ( $source.chars > 200
            ?? ($source.substr(200) ~ ' ... ')
            !! $source.trim ) ~
        '｣' ~ "\nbecause\n" ~ .message );
}
#say 'error: ',$!.raku, "\nmess:\n",$!.message;
say "highlighted:\n", $hilited;
if +@warnings {
    say "Warnings generated:"
    .say for @warnings;
}
else { say "No warnings" }
=finish
say foo
