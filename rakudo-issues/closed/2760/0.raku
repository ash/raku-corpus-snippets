# Summarized from t/spec/S17-supply/watch-path.t

use v6;

my $filename = "watch-path_checker";

my $handle = open( $filename, :w );

my $s = $filename.IO.watch.grep({ .path.IO.basename eq $filename }).unique;

my $tap = $s.tap: -> \change {
    say "Got event! " ~ change.perl;
}

$handle.say( "Hello world" );

sleep 10;
