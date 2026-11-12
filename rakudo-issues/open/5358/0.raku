#!/usr/bin/env raku

unlink "/run/user/1000/sock";

my $t = IO::Socket::Async.listen-path("/run/user/1000/sock").throttle: 1, -> $conn {
  sleep 5;
  react {
    whenever $conn.Supply.lines {
      say "\"", $_, "\"";
      done;
    }
  }
}, :vent-at(0), :bleed(Supplier.new);

$t.wait;
