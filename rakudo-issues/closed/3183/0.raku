use v6.d;

my Str:D    $message = 'i will face god and walk backwards into hell';
my Supply:D $server  = IO::Socket::Async.listen: 'localhost', 0;
my Tap:D    $tap     = $server.tap(-> IO::Socket::Async:D $connection {
    react whenever $connection.Supply -> Str:D $data {
        await $connection.print: $data;
        done;
    }
});

my IO::Socket::Async:D $client   =
    await IO::Socket::Async.connect: 'localhost', await $tap.socket-port;
my Str:D               $received = '';

react whenever $client.print: $message {
    whenever $client.Supply -> Str:D $data {
        $received ~= $data;
        say "Echoed: $received";
        done if $received eq $message;
    }
}

say 'Done!';
