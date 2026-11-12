my $c = Channel.new;
$c.send: 42 for ^1;
for $c.Seq.hyper(:1batch, :1degree) { .say }
