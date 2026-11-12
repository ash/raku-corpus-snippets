my $a = Metamodel::ClassHOW.new_type(name => "A");
$a.^compose;
say $a.new.WHAT ~~ $a
