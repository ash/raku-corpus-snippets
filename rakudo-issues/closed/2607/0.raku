my $inner = Metamodel::ClassHOW.new_type(name => 'Inner');
$inner.^compose;

my $outer = Metamodel::ClassHOW.new_type(name => 'Outer');
my $attr = Attribute.new(name => '$!inner', type => $inner, package => $outer, :has_accessor);
$outer.^add_attribute($attr);
$outer.^compose;

say $inner.WHICH eq $outer.^attributes[0].type.WHICH; # True
say $inner === $outer.^attributes[0].type; # True
say $inner ~~ $outer.^attributes[0].type; # False ???

# Type check failed in assignment to $!inner; expected Inner but got Inner.new ???
say $outer.new(inner => $inner.new);
