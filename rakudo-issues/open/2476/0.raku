use v6.d;

my Promise $p .= new;
my $v = $p.vow;
my $s = IO::Socket::Async.listen('::1', 0).tap(-> $c { $v.keep: 1 });
my $c = await IO::Socket::Async.connect: '::1', await $s.socket-port;
await $p;
$c.close;
$s.close;
