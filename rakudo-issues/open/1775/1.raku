my @c[400];
for ^400 {
    my $conn = await IO::Socket::Async.connect: '127.0.0.1', 3333;
    $conn.Supply.tap: {;}
    $conn.print: "test\n";
    @c[$_] = $conn;
}
sleep 1;
.close for @c;
