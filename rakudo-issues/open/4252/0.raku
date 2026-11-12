class A { 
    has Bool $.foo;
    method Str { $.foo }
};
my $a = A.new( :foo(True) );
say «a b $a».raku
