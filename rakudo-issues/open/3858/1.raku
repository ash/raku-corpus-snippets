my $cur-promise = Promise.new;
$cur-promise.keep(True);
my $proc = Proc::Async.new('cat', :w);
$proc.start;
while True {
  $cur-promise = $cur-promise.then({ await $proc.write("abc".encode); });
}
