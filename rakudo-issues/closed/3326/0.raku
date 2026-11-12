react {
    whenever IO::Socket::Async.listen('localhost', 3333) -> $connection {
        whenever $connection.Supply.lines -> $line {
            die unless $line eq 'ping'; # just checking...
            $connection.print( "pong\n" );
        }
    }
}
