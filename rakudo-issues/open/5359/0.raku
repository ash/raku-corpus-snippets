#!/usr/bin/env raku

unlink "/run/user/1000/sock";

my $t = IO::Socket::Async.listen-path("/run/user/1000/sock").throttle: 1, -> $conn {
  sleep 5;
  say "\"", $conn.Supply.lines.Channel.receive, "\"";
  $conn.close;
}, :vent-at(1), :bleed(Supplier.new);

$t.wait;
