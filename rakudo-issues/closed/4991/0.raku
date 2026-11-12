 my @a = <a b c d>;
 my $c = class C {
    our sub foo(*@a) { @a };
    method foo(*@a) { @a }
}.new;
@a ==> $c::foo() ==> say();
@a ==> foo($c:) ==> say();
