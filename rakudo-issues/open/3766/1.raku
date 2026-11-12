class C { has $.a = a; };
sub a { 42 }
say C.new.a;
# OUTPUT: 42
