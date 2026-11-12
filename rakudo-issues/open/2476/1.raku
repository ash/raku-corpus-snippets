use v6.d;

my $c = await IO::Socket::Async.connect: 'ipv6.google.com', 80;
$c.close;
