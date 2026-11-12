my $listen-socket = IO::Socket::Async.listen("::", 0);
react {
    my $listen-tap = do whenever $listen-socket -> $socket { … }
    await $listen-tap.socket-port; # Make sure port is ready
    say $listen-tap.socket-port.result;
}
