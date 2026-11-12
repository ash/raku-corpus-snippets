my $þor = sub { die "Something bad happened" };
try {
    $þor();
}
if ($!) {
    say $!.backtrace; 
}
