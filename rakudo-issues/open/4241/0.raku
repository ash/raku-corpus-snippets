my $sgn1 = :(Int $i, Str $s --> Int);
my $sgn2 = (-> Int $i, Str $s --> Int { 24 }).signature;
my $sgn3 = Signature.new(params => (Parameter.new(name => '$i', type => Int),
                                    Parameter.new(name => '$s', type => Str)),
                         returns => Int,
                         arity => 2);

say "sgn1 = ", $sgn1.raku;
say "sgn2 = ", $sgn2.raku;
say "sgn3 = ", $sgn3.raku;
