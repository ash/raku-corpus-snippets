react whenever IO::Socket::Async.listen('localhost', 3333) -> $conn {
    whenever $conn.Supply.lines {}
}
