#!/usr/bin/env raku

my $sock = IO::Socket::Async.connect-path("/run/user/1000/sock").result;
await $sock.print("ok\n");
say "socket is going to be closed";
$sock.close;
say "socket closed";
