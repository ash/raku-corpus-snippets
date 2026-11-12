my $a;               # An uninitialized item container.
$a{1, 2, 3} »=» 42;  # Treat it as a Hash, take a slice, and hyper-assign to it.
dd $a;
