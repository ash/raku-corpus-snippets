my $proc = Proc::Async.new('cat', :w);
$proc.start;
while True {
  await $proc.write("abc".encode);
}
