use v6.c;

my $server = IO::Socket::INET.new(:localhost('::1'), :localport(8000), :listen, :family(PF_INET6));
my $client = IO::Socket::INET.new(:host('::1'), :port(8000), :family(PF_INET6));
my $conn = $server.accept;
$conn.print("sup?\n");
$client.recv.print;
$conn.close;
$server.close;

$server = IO::Socket::Async.listen('::1', 8000);
$server.tap(-> $conn {
    await $conn.print("not much\n");
    $conn.close;
});
$client = await IO::Socket::Async.connect('::1', 8000);
$client.Supply.tap(-> $data {
    $data.print;
});

sleep 0.01;
