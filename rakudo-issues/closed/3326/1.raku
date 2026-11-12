my $connection = IO::Socket::INET.new( host => 'localhost',  port => 3333 );

my $start = now;
for ^100000 {
    $connection.put( 'ping' );
    my $status = $connection.get( );
    die unless $status eq 'pong'; # just checking...
}
say now - $start;
