use Telemetry; 
my $count = 0; 
loop { 
    my $proc = run <echo 42>, :out :err; 
    my $err = $proc.err.slurp: :close; 
    say $count++ ~ ' ' ~ T<max-rss>
}
