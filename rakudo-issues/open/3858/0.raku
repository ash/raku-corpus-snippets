my $proc = Proc.new(:in);
$proc.spawn('cat');
while True {
  $proc.in.write("abc".encode);
}
